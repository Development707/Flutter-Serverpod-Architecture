BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_auth_key" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "employee" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "example" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "data" bigint NOT NULL,
    "parentId" bigint
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
    "addressId" bigint NOT NULL,
    "age" bigint NOT NULL,
    "companyId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_address_unique_idx" ON "user" USING btree ("addressId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "example"
    ADD CONSTRAINT "example_fk_0"
    FOREIGN KEY("parentId")
    REFERENCES "example"("id")
    ON DELETE NO ACTION
    ON UPDATE SET NULL;

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
    VALUES ('serverpod_architecture', '20240531090913177', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240531090913177', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
