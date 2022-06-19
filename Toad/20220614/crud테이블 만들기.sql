CREATE TABLE SCOTT.MEMBER
(
  MEM_NO    NUMBER(5),
  MEM_ID    VARCHAR2(30 BYTE),
  MEM_PW    VARCHAR2(10 BYTE),
  MEM_NAME  VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX SCOTT.MEMBER_NO_PK ON SCOTT.MEMBER
(MEM_NO)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


ALTER TABLE SCOTT.MEMBER ADD (
  CONSTRAINT MEMBER_NO_PK
  PRIMARY KEY
  (MEM_NO)
  USING INDEX SCOTT.MEMBER_NO_PK
  ENABLE VALIDATE);
  
