CREATE USER cdcadmin;
CREATE ROLE cdcadminrole LOGIN;
GRANT cdcadminrole TO cdcadmin;

-- cdcdemo db should already exist, but it's not been reliable.  The "if not exists" syntax below
-- isn't supported, but this is the idea.

-- Database: cdcdemo
-- CREATE DATABASE IF NOT EXISTS cdcdemo
--     WITH
--     OWNER = cdcadmin
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'en_US.utf8'
--     LC_CTYPE = 'en_US.utf8'
--     LOCALE_PROVIDER = 'libc'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1
--     IS_TEMPLATE = False;

COMMENT ON DATABASE cdcdemo
    IS 'Main db for cdc demo';

ALTER DATABASE cdcdemo OWNER TO cdcadmin;

GRANT ALL PRIVILEGES ON DATABASE cdcdemo TO cdcadminrole;
