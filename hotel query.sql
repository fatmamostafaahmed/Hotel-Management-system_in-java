
insert into room(Rno,Rtype,Rent,Rdesc) values(@no,@type,@rent,@desc)

delete from room where Rno @no

select r.Rno, r.Rtype, r.Rent, r.Rdesc from room as r


select e.EmpName,e.EmpMobile,e.EmpAddress from employee as e where e.UserName = @n and UserPassword = @pass

insert into Reservation(FromDate,ToDate,Rno,EmpName) values(@from, @to, @rno, @empname)

delete from Reservation where ResNo = @res

select r.ResNo, r.FromDate, r.ToDate, r.Rno, r.EmpName from Reservation as r where r.ResNo =@res

select r.ResNo, r.FromDate, r.ToDate, r.Rno, r.EmpName from Reservation as r where r.Rno=@rno

insert into guest(ID,ArName,EngName,Gender,Nationality,ResNo,MobileNo) values(@id, @ar, @en, @g, @nat, @Res,@mob)
