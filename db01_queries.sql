/** Listing Table Names From a DB */
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';

/** Alternative to DESCRIBE TABLE_NANE */
EXEC sp_columns MENU_STORES;


/** Order Payments & Order Refunds */
SELECT * FROM dbo.ORDER_PAYMENT 
INNER JOIN 
dbo.ORDER_REFUNDS on 
dbo.ORDER_PAYMENT.OrderNumber=dbo.ORDER_REFUNDS.OrderNumber;

-----------------------------------------------------------------

/** Stored Procedures ---- Always Compiled */


/** sp Items Get All **/
CREATE PROCEDURE dbo.spItems_GetAll

AS

BEGIN

    SELECT * 
    FROM dbo.ITEMS;

END;


/* call get all items */
EXEC dbo.spItems_GetAll;


-------------------------------------------------------------------

/* sp get amount paid from order payment table */

CREATE PROCEDURE dbo.spOrderPayment_GetAmoumtPaid
    @AmountPaid smallmoney /* no length */


AS

BEGIN

    SELECT *
    FROM dbo.ORDER_DETAILS
    WHERE AmountPaid = @AmountPaid

END


/** call get amount paid from order payment table */
EXEC dbo.spOrderPayment_GetAmountPaid -- amount goes here;


