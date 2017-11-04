<?php
    ob_start();
    session_start();
    $_SESSION['logged']=true;
    $_SESSION['user']="";
    $_SESSION['userid']="";

    include 'config.php';

    if(isset($_REQUEST['btn_login'])) {
        $_SESSION['userid']=$_REQUEST['user'];
        $user=$_REQUEST['user'];
        $pwd=$_REQUEST['password'];

        $sql="SELECT * FROM user WHERE username='$user' and password='$pwd'";
        $res=mysqli_query($conn,$sql);
        if(mysqli_num_rows($res)>0) {
            while($row=mysqli_fetch_assoc($res)) {
                $_SESSION['logged']=true;
                $query="SELECT sname FROM staff WHERE SID='$user'";
                $res1=mysqli_query($conn,$query);
                if(mysqli_num_rows($res1)>0) {
                    $row1=mysqli_fetch_array($res1);
                    $_SESSION['user']=$row1[0];
                    header("Location:https://webquiz.000webhostapp.com/");
                }
                else 
                    echo "Error: ".mysqli_error($conn);
            }
        }
        else {
            echo "Incorrect username or password";
        }
    }
?>



