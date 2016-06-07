-- Autogenerated: do not edit this file

CREATE TABLE INT_MESSAGE  (
	MESSAGE_ID CHAR(36),
	REGION VARCHAR2(100),
	CREATED_DATE TIMESTAMP NOT NULL,
	MESSAGE_BYTES BLOB,
	constraint MESSAGE_PK primary key (MESSAGE_ID, REGION)
);

CREATE INDEX INT_MESSAGE_IX1 ON INT_MESSAGE (CREATED_DATE);

CREATE TABLE INT_GROUP_TO_MESSAGE  (
	GROUP_KEY CHAR(36),
	MESSAGE_ID CHAR(36),
	REGION VARCHAR2(100),
	constraint GROUP_TO_MESSAGE_PK primary key (GROUP_KEY, MESSAGE_ID, REGION)
);

CREATE TABLE INT_MESSAGE_GROUP  (
	GROUP_KEY CHAR(36),
	REGION VARCHAR2(100),
	MARKED NUMBER(19,0),
	COMPLETE NUMBER(19,0),
	LAST_RELEASED_SEQUENCE NUMBER(19,0),
	CREATED_DATE TIMESTAMP NOT NULL,
	UPDATED_DATE TIMESTAMP DEFAULT NULL,
	constraint MESSAGE_GROUP_PK primary key (GROUP_KEY, REGION)
);

CREATE TABLE INT_LOCK  (
	LOCK_KEY CHAR(36),
	REGION VARCHAR2(100),
	CLIENT_ID CHAR(36),
	CREATED_DATE TIMESTAMP NOT NULL,
	constraint LOCK_PK primary key (LOCK_KEY, REGION)
);
