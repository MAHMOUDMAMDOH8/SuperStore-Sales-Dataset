CREATE DATABASE Supermarket
ON
(
  NAME = 'Super_dat',
  FILENAME = 'D:\database\All Data\Super.mdf',
  SIZE = 30MB,
  MAXSIZE = 70MB,
  FILEGROWTH = 5MB
)
LOG ON
(
  NAME = 'Super_log',
  FILENAME = 'D:\database\All Data\Super.ldf',
  SIZE = 20MB,
  MAXSIZE = 50MB,
  FILEGROWTH = 5MB
);
