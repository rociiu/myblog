CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "parent_id" integer, "title" varchar(255), "comment" varchar(255), "email" varchar(255), "site" varchar(255), "nickname" varchar(255), "created_at" datetime, "updated_at" datetime, "parent_type" varchar(255));
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "content" text, "display" boolean, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20090208022018');

INSERT INTO schema_migrations (version) VALUES ('20090208022941');

INSERT INTO schema_migrations (version) VALUES ('20090208023356');