<?php
ob_start();
session_start();
include 'config.php';
if(isset($_REQUEST["addsched"])){
    if($conn){
        $mst=$_REQUEST['mst'];
        $met=$_REQUEST['met'];
        $monc=$_REQUEST['monc'];
        $tust=$_REQUEST['tust'];
        $tuet=$_REQUEST['tuet'];
        $tuonc=$_REQUEST['tuonc'];
        $wst=$_REQUEST['wst'];
        $wet=$_REQUEST['wet'];
        $wonc=$_REQUEST['wonc'];
        $thst=$_REQUEST['thst'];
        $thet=$_REQUEST['thet'];
        $thonc=$_REQUEST['thonc'];
        $fst=$_REQUEST['fst'];
        $fet=$_REQUEST['fet'];
        $fonc=$_REQUEST['fonc'];
        $sast=$_REQUEST['sast'];
        $saet=$_REQUEST['saet'];
        $saonc=$_REQUEST['saonc'];
        $sust=$_REQUEST['sust'];
        $suet=$_REQUEST['suet'];
        $suonc=$_REQUEST['suonc'];
        $userid=$_SESSION['userid'];
        
        $query="UPDATE schedule SET mst='$mst',met='$met',monc='$monc',tust='$tust',tuet='$tuet',tuonc='$tuonc',wst='$wst',wet='$wet',wonc='$wonc',thst='$thst',thet='$thet',thonc='$thonc',fst='$fst',fet='$fet',fonc='$fonc',sast='$sast',saet='$saet',saonc='$saonc',sust='$sust',suet='$suet',suonc='$suonc' WHERE sid='$userid'";
        
        $res=mysqli_query($conn,$query);
        if($res) {
            header("Location:https://webquiz.000webhostapp.com/schedule.php");
        }
        else
            echo "Error: ".mysqli_error($conn);
    }
    else 
        echo "Error connecting to database";
}
else
    echo "Button not clicked";
?>
