$(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var maxDate = year + '-' + month + '-' + day;
    $('#txtDate').attr('min', maxDate);
    $('#txtDate1').attr('min', maxDate);

});





function validate()
{   

     
    var flag=0;
    for(i=1;i<=3;i++)
    {   

    
        console.log("checking "+i+" item and got "+validCheck(i));
        if (validCheck(i) == false) 
        {
            flag ++ ;
        }
    }
    
    if (flag == 0) 
    {   
        console.log("Form Submitted");
        alert("Form Submitted ");
        return true;

    }
    else
    {
      
        document.getElementById("erorno").innerHTML = "Check form again";
            return false;   
    }
}

function validCheck(x)
{
    var full_name = document.regForm.name.value;
    var email = document.regForm.email.value;
    var number = document.regForm.mobile.value;
    /*var pass1 = document.regForm.pass1.value;*/

    
    

    var r_for_name = new RegExp(/^[a-zA-Z_ ]+$/);
    var l_for_name = new RegExp(/^[a-zA-Z_ ]+$/);
    var email_valid =  new RegExp(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/);
    var numCheck = new RegExp(/[0-9]+$/);
    var passcheck = new RegExp(/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/);

    switch(x)
    {
        case 1:
        
        if(full_name=="")
        {
            document.regForm.name.classList.remove("ok");
            document.regForm.name.classList.add("error");
            document.getElementById("alert").innerHTML = "please Fill the Form";
    
            
            return false;
        }
        else
        {
            var res = r_for_name.test(full_name);
            
            if(res)
            {
                
                    if(full_name.length > 3 && full_name.length < 10)
                    {
                        document.regForm.name.classList.remove("error");
                        document.regForm.name.classList.add("ok");
                        document.getElementById("alert").innerHTML = "Valid";
                
                        return true;
                        
                        
                    }
                    else
                    {
                        document.regForm.name.classList.remove("ok");
                        document.regForm.name.classList.add("error");
                        document.getElementById("alert").innerHTML = "Char range 4 -10";
                
            
                        return false;
                    }
            }
            else
            {
                
                document.regForm.name.classList.remove("ok");
                document.regForm.name.classList.add("error");
                document.getElementById("alert").innerHTML = "only character";
        
            
                return false;
            }
        }   
        break;
        case 2:
    
        
        if (email=="") 
        {
            document.regForm.email.classList.remove("ok");
            document.regForm.email.classList.add("error");
            document.getElementById("alert3").innerHTML = "please Fill the Form";
    
            
            return false;
        }
        else
        {
            var res = email_valid.test(email);
            if(res)
            {
                
                    if(email.length > 3)
                    {
                        document.regForm.email.classList.remove("error");
                        document.regForm.email.classList.add("ok");
                        document.getElementById("alert3").innerHTML = "Valid";
                
                        return true; 

                    }
                    else
                    {   
                        document.regForm.email.classList.remove("ok");
                        document.regForm.email.classList.add("error");
                        document.getElementById("alert3").innerHTML = "Char Should be 3 -10";
                
            
                        return false;
                    }
            }
            else
            {
                
                document.regForm.email.classList.remove("ok");
                document.regForm.email.classList.add("error");
                document.getElementById("alert3").innerHTML = "Email pattern not correct ";
        
            
                return false;
            }   
        }
        break;
        case 3:
        
        
        if (number=="")
         {
            document.regForm.mobile.classList.remove("ok");
            document.regForm.mobile.classList.add("error");
            document.getElementById("alert4").innerHTML = "please Fill the Form";
    
            
            return false;
         }
         else
         {
            var res =  numCheck.test(number);
            
            if(res)
            {
                

                    if(number > 6660000000 && number < 9999999999 )
                    {
                        document.regForm.mobile.classList.remove("error");
                        document.regForm.mobile.classList.add("ok");
                        document.getElementById("alert4").innerHTML = "Valid";
            
                        return true;
                        
                    }
                    else
                    {   
                        document.regForm.mobile.classList.remove("ok");
                        document.regForm.mobile.classList.add("error");
                        document.getElementById("alert4").innerHTML = "Please Check the number";
                
                        return false;
                    }
            }
            else
            {
                
                document.regForm.mobile.classList.remove("ok");
                document.regForm.mobile.classList.add("error");
                document.getElementById("alert4").innerHTML = "please enter number only ";
        
                return false;
            }
        }   
        break;
       /* case 4:
        var res = passcheck.test(pass1)
        if (pass1=="")
         {
            document.regForm.pass1.classList.remove("ok");
            document.regForm.pass1.classList.add("error");
            document.getElementById("alert5").innerHTML = "please Fill the Form";
    
            
            return false;
         }
         else
         {
                if(res)
                {
                    document.regForm.pass1.classList.remove("error");
                    document.regForm.pass1.classList.add("ok");
                    document.getElementById("alert5").innerHTML = "Valid";
            
                    return true;
                }
                else
                {
                    document.regForm.pass1.classList.remove("ok");
                    document.regForm.pass1.classList.add("error");
                    document.getElementById("alert5").innerHTML = "One upper Case One lowerCase  Special Char and number Must Be entered ";
            
            
                    return false;
                }
         }
        
        break;        */
    }
} 
