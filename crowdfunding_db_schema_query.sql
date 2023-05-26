CREATE TABLE "Category" (
    "category_id" VARCHAR(50)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

SELECT * FROM "Category";

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(50)   NOT NULL,
    "subcategory" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

SELECT * FROM "Subcategory";

CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

SELECT * FROM "Contacts";

-- First attempt at creating the Campaign table
CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(225)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" FLOAT   NOT NULL,
    "backers_count" FLOAT   NOT NULL,
    "country" VARCHAR(225)   NOT NULL,
    "currency" INT   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

-- Second attempt at creating the Campaign table trying to get forgein keys to work
ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

DROP TABLE "Campaign";

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" VARCHAR(50)   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(225)   NOT NULL,
    "goal" VARCHAR(225)   NOT NULL,
    "pledged" VARCHAR(225)   NOT NULL,
    "outcome" FLOAT   NOT NULL,
    "backers_count" FLOAT   NOT NULL,
    "country" VARCHAR(225)   NOT NULL,
    "currency" INT   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "uq_Campaign_contact_id" UNIQUE ("contact_id"),
    CONSTRAINT "uq_Campaign_category_id" UNIQUE ("category_id"),
    CONSTRAINT "uq_Campaign_subcategory_id" UNIQUE ("subcategory_id")
);


-- Third attempt at creating the Campaign table changed variable types to match the data types in the csv file
CREATE TABLE "Campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(100) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(10) NOT NULL,
    "currency" VARCHAR(10) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(10) NOT NULL,
    "subcategory_id" VARCHAR(10) NOT NULL,
	CONSTRAINT "pk_Campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_Campaign_Contact" FOREIGN KEY ("contact_id") REFERENCES "Contacts" ("contact_id"),
    CONSTRAINT "fk_Campaign_Category" FOREIGN KEY ("category_id") REFERENCES "Category" ("category_id"),
    CONSTRAINT "fk_Campaign_Subcategory" FOREIGN KEY ("subcategory_id") REFERENCES "Subcategory" ("subcategory_id")
);

SELECT * FROM "Campaign";

DROP TABLE "Campaign";
    
