-- SENTRY-339
ALTER TABLE `SENTRY_DB_PRIVILEGE` DROP INDEX `SENTRY_DB_PRIV_PRIV_NAME_UNIQ`;
ALTER TABLE `SENTRY_DB_PRIVILEGE` ADD UNIQUE `SENTRY_DB_PRIV_PRIV_NAME_UNIQ` (`SERVER_NAME`,`DB_NAME`,`TABLE_NAME`,`URI`(250),`ACTION`,`WITH_GRANT_OPTION`);
ALTER TABLE `SENTRY_DB_PRIVILEGE` DROP `PRIVILEGE_NAME`;
