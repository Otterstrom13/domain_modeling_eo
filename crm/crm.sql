-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS sales_activities;
DROP TABLE IF EXISTS salespeople;

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT,
  company_id INTEGER
);

CREATE TABLE sales_activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT,
  date TEXT,
  notes TEXT,
  salesperson_id INTEGER,
  contact_id INTEGER
);

CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);


