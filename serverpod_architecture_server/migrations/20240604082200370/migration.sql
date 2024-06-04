BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "company" ADD COLUMN "addressId" bigint;
ALTER TABLE "company" ADD COLUMN "ceoId" bigint;
ALTER TABLE ONLY "company"
    ADD CONSTRAINT "company_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "company"
    ADD CONSTRAINT "company_fk_1"
    FOREIGN KEY("ceoId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "employee" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "email" text,
    "role" text,
    "addressId" bigint,
    "companyId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "order" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "price" double precision NOT NULL,
    "itemType" text NOT NULL,
    "userId" bigint NOT NULL,
    "companyId" bigint NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "user" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "addressId" bigint NOT NULL,
    "age" bigint NOT NULL,
    "companyId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_address_unique_idx" ON "user" USING btree ("addressId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "employee"
    ADD CONSTRAINT "employee_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE CASCADE;
ALTER TABLE ONLY "employee"
    ADD CONSTRAINT "employee_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "company"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "order"
    ADD CONSTRAINT "order_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "order"
    ADD CONSTRAINT "order_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "company"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "company"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR serverpod_architecture
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_architecture', '20240604082200370', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240604082200370', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
