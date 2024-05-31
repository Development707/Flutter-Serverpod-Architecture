BEGIN;

--
-- ACTION ALTER TABLE
--
CREATE INDEX "company_name_idx" ON "company" USING brin ("name");

--
-- MIGRATION VERSION FOR serverpod_architecture
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_architecture', '20240531092345065', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240531092345065', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
