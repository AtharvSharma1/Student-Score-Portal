function uname()
{
    x=document.getElementById("t1").value;
    if(x.length<3)
    {
        document.getElementById("p1").innerHTML="Invalid User Name";
        return false;
    }
    else
    {
        return true;
    }
}

function upass()
{
    x=document.getElementById("t2").value;
    if(x.length<3)
    {
        document.getElementById("p2").innerHTML="Invalid Password";
        return false;
    }
    else
    {
        return true;
    }
}

function demo()
{
    document.getElementById("p1").innerHTML="";
    document.getElementById("p2").innerHTML="";
    if(uname() && upass())
    {
        form1.submit();
    }
}