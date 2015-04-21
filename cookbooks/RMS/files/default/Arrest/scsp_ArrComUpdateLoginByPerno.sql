  /*
    Purpose: In Arr_Comm, change the name field to the person's actual name
             if the name field has the user name of the perno
  
  
    $Archive: /EngrSource/RMS_mainline/Database/Arrest/scsp_ArrComUpdateNameByPerno.sql $
    $Revision: 1 $
    $Author: Grhyne $
    $Date: 5/23/08 4:04p $
    $NoKeywords: $
  
    Copyright © 2008 SmartCOP, Inc.
  */
  
  CREATE PROCEDURE [dbo].[scsp_ArrComUpdateLoginByPerno]
     @ReportNo  VARCHAR(15)
  AS
  BEGIN
    DECLARE @PerNo                  VARCHAR(15),
            @UniqueKey              VARCHAR(22),
            @FirstName              VARCHAR(20),
            @MiddleName             VARCHAR(20),
            @LastName               VARCHAR(20),
            @FullName               VARCHAR(62),
            @UserName               VARCHAR(15),
            @Record_Count           INT
  
    DECLARE @ReturnCode int
    SET @ReturnCode = 0
  
    DECLARE RecordCursor CURSOR FOR
      SELECT PerNo, UniqueKey
      FROM Arrest.dbo.Arr_Com WITH (NOLOCK)
      WHERE ArrestNo = @ReportNo
  
    OPEN RecordCursor
  
    FETCH NEXT FROM RecordCursor INTO  @PerNo, @UniqueKey
  
    WHILE @@FETCH_STATUS = 0
    BEGIN
      SELECT
            @Record_Count = 1,
            @FirstName   = LTrim(RTrim(FName)),
            @MiddleName  = LTrim(RTrim(MName)),
            @LastName    = LTrim(RTrim(LName)),
            @UserName    = LTrim(RTrim(UserName))
      FROM EmpMast.dbo.EmpMast EmpMast WITH (NOLOCK)
      LEFT JOIN EmpMast.dbo.Users Users WITH (NOLOCK) ON EmpMast.PerNo = Users.PerNo
      WHERE EmpMast.PerNo = @PerNo
  
      IF @Record_Count = 1
        SET @FullName = LTrim(RTrim(LTrim(RTrim(@FirstName + ' ' + @MiddleName)) + ' '  + @LastName))
  
      IF @FullName <> ''
      BEGIN
        -- Update Arr_Com table with full name if the name field equals the person's user name
        UPDATE Arrest.dbo.Arr_Com SET [Name] = @FullName
          WHERE UniqueKey = @Uniquekey
          AND LTrim(RTrim([Name])) = @UserName
        IF (@@ERROR<>0)
        BEGIN
          SET @ReturnCode = -1
 
          CLOSE RecordCursor
          DEALLOCATE RecordCursor
          RETURN
        END
      END
      FETCH NEXT FROM RecordCursor INTO @PerNo, @UniqueKey
    END
  
    CLOSE RecordCursor
    DEALLOCATE RecordCursor
  
  END