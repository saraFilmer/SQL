# SQL
SQL
<!-- אנגלית -->
# Purim Gift Basket Sales Project - SQL

This project is designed to manage a database for Purim gift basket sales. The project includes creating a database, tables, functions, procedures, triggers, views, and various queries. It demonstrates advanced SQL techniques and best practices for database management.

## Project Structure

### Main Files
- **Database-Creation.sql**  
  This file contains the database definition (DDL), including table creation, adding constraints, and table modifications. The database schema is designed with normalization principles to ensure data integrity and minimize redundancy.

- **Insert-Data.sql**  
  This file contains commands to insert data (DML) into the various database tables. The data is structured to represent realistic scenarios, including customer orders, product details, and delivery styles.

- **Functions.sql**  
  This file contains custom functions:
  - `f_profit`: Calculates profit based on a given date, enabling dynamic financial analysis.
  - `f_custAddress`: Returns a list of customers filtered by address, supporting targeted customer queries.

- **Procedures.sql**  
  This file contains stored procedures:
  - `addGift`: Adds a gift to a customer's order, streamlining the process of modifying orders.
  - `avgPrice`: Updates product prices below the average price, ensuring pricing consistency across the product catalog.

- **Views.sql**  
  This file contains:
  - A view named `goodOrder` to display order details in a user-friendly format, simplifying data retrieval for reporting purposes.
  - A query using `CASE` to calculate new product prices dynamically, showcasing advanced SQL logic.

- **Trigger.sql**  
  This file includes a trigger that enforces business rules by automatically validating or updating data upon specific table events.

- **Cursor.sql**  
  This file demonstrates the use of cursors for iterative data processing, enabling complex operations on datasets.

- **Simple-Query-With-Distinct-And-Subqueries.sql**  
  This file contains optimized queries using `DISTINCT` and subqueries to extract unique and aggregated data efficiently.

### Database Structure
The database includes the following tables:
1. **TypeStyle**: A table for delivery styles, categorizing different shipping methods.
2. **Customers**: A table for customers, storing personal and contact information.
3. **Products**: A table for products, detailing item descriptions, prices, and stock levels.
4. **Orders**: A table for orders, capturing transaction details such as order date and customer ID.
5. **ProdOrder**: A junction table linking orders and products, supporting many-to-many relationships.

### Advanced Features
- **Data Validation**: Constraints and triggers ensure data accuracy and enforce business rules.
- **Dynamic Calculations**: Functions and procedures enable real-time calculations, such as profit margins and price adjustments.
- **Optimized Queries**: Views and subqueries are designed for efficient data retrieval and reporting.
- **Scalability**: The database schema is built to accommodate future expansions, such as additional product categories or customer demographics.

## Usage Instructions
1. **Create the Database**  
   Run the `Database-Creation.sql` file to create the database and tables.

2. **Insert Data**  
   Run the `Insert-Data.sql` file to populate the tables with sample data.

3. **Use Functions and Procedures**  
   - Run the `Functions.sql` file to define custom functions.
   - Run the `Procedures.sql` file to define custom stored procedures.

4. **Views and Queries**  
   Run the `Views.sql` file to define views and execute queries.

5. **Triggers and Cursors**  
   - Run the `Trigger.sql` file to activate triggers for automated data validation.
   - Run the `Cursor.sql` file to execute iterative data operations.

## Credits
This project was created as part of SQL studies and demonstrates advanced techniques for managing a database, including schema design, data manipulation, and query optimization.

<!-- עברית -->
# פרויקט מכירת משלוחי מנות - SQL

פרויקט זה נועד לנהל מסד נתונים עבור מכירת משלוחי מנות. הפרויקט כולל יצירת מסד נתונים, טבלאות, פונקציות, פרוצדורות, טריגרים, תצוגות ושאילתות שונות. הוא מדגים טכניקות מתקדמות ב-SQL ושיטות עבודה מומלצות לניהול מסדי נתונים.

## מבנה הפרויקט

### קבצים עיקריים
- **Database-Creation.sql**  
  קובץ זה מכיל את הגדרת מסד הנתונים (DDL), כולל יצירת טבלאות, הוספת אילוצים ושינויים בטבלאות. סכמת מסד הנתונים תוכננה בהתאם לעקרונות נרמול כדי להבטיח שלמות נתונים ולהפחית כפילויות.

- **Insert-Data.sql**  
  קובץ זה מכיל פקודות להוספת נתונים (DML) לטבלאות השונות במסד הנתונים. הנתונים בנויים לייצג תרחישים מציאותיים, כולל הזמנות לקוחות, פרטי מוצרים וסגנונות משלוח.

- **Functions.sql**  
  קובץ זה מכיל פונקציות מותאמות אישית:
  - `f_profit`: מחשבת רווח לפי תאריך נתון, ומאפשרת ניתוח פיננסי דינמי.
  - `f_custAddress`: מחזירה רשימת לקוחות מסוננת לפי כתובת, לתמיכה בשאילתות ממוקדות.

- **Procedures.sql**  
  קובץ זה מכיל פרוצדורות:
  - `addGift`: מוסיפה מתנה להזמנה של לקוח, ומייעלת את תהליך עדכון ההזמנות.
  - `avgPrice`: מעדכנת מחירים של מוצרים מתחת למחיר הממוצע, ומבטיחה עקביות במחירי המוצרים.

- **Views.sql**  
  קובץ זה מכיל:
  - תצוגה בשם `goodOrder` להצגת פרטי הזמנות בפורמט ידידותי למשתמש, שמפשט את שליפת הנתונים לצורכי דיווח.
  - שאילתה המשתמשת ב-`CASE` לחישוב מחירים חדשים למוצרים באופן דינמי, המדגימה לוגיקה מתקדמת ב-SQL.

- **Trigger.sql**  
  קובץ זה כולל טריגר שמחיל כללי עסק אוטומטיים על ידי אימות או עדכון נתונים באירועים מסוימים בטבלאות.

- **Cursor.sql**  
  קובץ זה מדגים שימוש בקורסורים לעיבוד נתונים איטרטיבי, המאפשר ביצוע פעולות מורכבות על מערכי נתונים.

- **Simple-Query-With-Distinct-And-Subqueries.sql**  
  קובץ זה מכיל שאילתות אופטימליות המשתמשות ב-`DISTINCT` ותתי-שאילתות לשליפת נתונים ייחודיים ומצטברים ביעילות.

### מבנה מסד הנתונים
מסד הנתונים כולל את הטבלאות הבאות:
1. **TypeStyle**: טבלה עבור סגנונות משלוח, המסווגת שיטות משלוח שונות.
2. **Customers**: טבלה עבור לקוחות, המאחסנת מידע אישי ופרטי קשר.
3. **Products**: טבלה עבור מוצרים, הכוללת תיאורי פריטים, מחירים ורמות מלאי.
4. **Orders**: טבלה עבור הזמנות, המתעדת פרטי עסקאות כגון תאריך הזמנה ומזהה לקוח.
5. **ProdOrder**: טבלת קשר בין הזמנות למוצרים, התומכת ביחסי רבים-לרבים.

### תכונות מתקדמות
- **אימות נתונים**: אילוצים וטריגרים מבטיחים דיוק נתונים ואכיפת כללי עסק.
- **חישובים דינמיים**: פונקציות ופרוצדורות מאפשרות חישובים בזמן אמת, כגון מרווחי רווח והתאמות מחירים.
- **שאילתות אופטימליות**: תצוגות ותתי-שאילתות תוכננו לשליפת נתונים יעילה ודיווח.
- **יכולת הרחבה**: סכמת מסד הנתונים בנויה לתמוך בהרחבות עתידיות, כגון קטגוריות מוצרים נוספות או דמוגרפיית לקוחות.

## הוראות שימוש
1. **יצירת מסד הנתונים**  
   הרץ את הקובץ `Database-Creation.sql` כדי ליצור את מסד הנתונים והטבלאות.

2. **הכנסת נתונים**  
   הרץ את הקובץ `Insert-Data.sql` כדי להוסיף נתונים לדוגמה לטבלאות.

3. **שימוש בפונקציות ובפרוצדורות**  
   - הרץ את הקובץ `Functions.sql` כדי להגדיר פונקציות מותאמות אישית.
   - הרץ את הקובץ `Procedures.sql` כדי להגדיר פרוצדורות מותאמות אישית.

4. **תצוגות ושאילתות**  
   הרץ את הקובץ `Views.sql` כדי להגדיר תצוגות ולבצע שאילתות.

5. **טריגרים וקורסורים**  
   - הרץ את הקובץ `Trigger.sql` כדי להפעיל טריגרים לאימות נתונים אוטומטי.
   - הרץ את הקובץ `Cursor.sql` כדי לבצע פעולות איטרטיביות על נתונים.

## קרדיטים
פרויקט זה נכתב כחלק מלימודי SQL ומדגים טכניקות מתקדמות לניהול מסד נתונים, כולל עיצוב סכמות, מניפולציית נתונים ואופטימיזציית שאילתות.