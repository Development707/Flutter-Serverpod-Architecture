BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "company" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "foundedDate" timestamp without time zone
);


--
-- MIGRATION VERSION FOR serverpod_architecture
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_architecture', '20240503050318396', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240503050318396', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
