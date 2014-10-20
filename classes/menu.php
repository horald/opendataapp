<?php
include("dbtools.php");

echo "<script type='text/javascript'>";

echo "function checkexpand(vnode) {";
echo "    var items = document.getElementsByTagName('li');";
echo "    for(var i = 0; i < items.length; i+=1) {";
echo "      if(items[i].getAttribute('id')=='node'+vnode) {";
echo "        alert('check:'+vnode+'='+items[i].getAttribute('value'));";
echo "        strexp = items[i].getAttribute('value'); ";
echo "      }";
echo "    }";
echo "    return strexp;";
echo "}";

echo "function toggle(vnode,vdisplay,vexp) {";
echo "    var items = document.getElementsByTagName('li');";
echo "    for(var i = 0; i < items.length; i+=1) {";
echo "      if(items[i].getAttribute('id')=='node'+vnode) {";
echo "        strindex = items[i].getAttribute('name');";
echo "        strindex = strindex.substr(5,strindex.length-5);";
echo "        strexp = checkexpand(vnode);";
//echo "        if (vexp==strexp) {";
echo "          items[i].style.display = vdisplay;";
//echo "        }";
echo "        toggle(strindex,vdisplay);";
echo "      }";
echo "    }";
echo "}";

echo "function myswitch(vnode,vparent) {";
echo "  mycheck = document.getElementById('node'+vnode).value;";
//echo "        alert('mycheck:'+mycheck+','+vnode);";
echo "  if (mycheck=='expand') {";
echo "    document.getElementById('node'+vnode).value='collapse';";
echo "    toggle(vnode,'none','collapse')";
echo "  } else {";
echo "    document.getElementById('node'+vnode).value='expand';";
echo "    toggle(vnode,'normal','expand')";
echo "  }";
echo "}";

echo "</script>";

function showmenuitem($bez,$addr,$id,$vaterid) {
    echo "<li id='node".$id."' value='normal' style='display:normal'>";
    echo "<a href='".$addr."' target='MyFensterlein'>".$bez."</a></li>";
}	

function page_menu($treeMenu,$vaterid,$brver,$childid,$readonly,$dbtyp) {
  //echo $readonly."<br>";
  //  $query = "SELECT * FROM tblmenu_liste WHERE fldview='J' AND fldparent='".$vaterid."' AND fldversion>='0303' ORDER BY fldSort";
  if ($readonly<>"true") {
    $query = "SELECT tblmenu_liste.fldindex AS fldmlindex, fldmenu, fldparent FROM tblmenu_liste, tblmenu_projekt AS mp WHERE fldid_menuprojekt=mp.fldindex AND mp.fldaktiv='J' AND fldview='J' AND fldparent='".$vaterid."' AND fldversion>='0303' ORDER BY fldsort";
  } else {
    $query = "SELECT tblmenu_liste.fldindex AS fldmlindex, fldmenu, fldparent FROM tblmenu_liste, tblmenu_projekt AS mp WHERE fldart='MENU' AND fldid_menuprojekt=mp.fldindex AND mp.fldaktiv='J' AND fldview='J' AND fldparent='".$vaterid."' AND fldversion>='0303' ORDER BY fldsort";
//    $query = "SELECT * FROM tblmenu_liste, tblmenu_projekt AS mp WHERE fldart='MENU' AND fldid_menuprojekt=mp.fldindex AND mp.fldaktiv='J' AND fldview='J' AND fldparent='".$vaterid."' AND fldversion>='0303'";
  }
//  echo $query."<br>";
//  $result = mysql_query($query) or die(mysql_error());
//echo "vor db_query<br>";
  $result = db_query($query,"=Fehler",$dbtyp);
//echo "nch db_query<br>";

  if ($brver==="mobil") {
  	 //echo "<ul id='".$vaterid."'>"; 
  	 echo "<ul>"; 
  }	
//  while ($line = mysql_fetch_array($result)) {
  while ($line = db_fetch($result,$dbtyp)) {

    //echo $line['fldTyp'].",".$line['fldmenu']."=menümodul<br>"; 
    $page=$line['fldmlindex'];
    $target="";
    switch ($line['fldtyp']) {
    	case "WEBLINK":
      	$addr=$line['fldtblwebadr'];
      	//echo $addr."=addr<br>";
      	$target=$line['fldtarget'];
      break;
      default:	
        $qrymod = "SELECT * FROM tblmenu_liste, tblmenu_modul WHERE tblmenu_liste.fldid_modul=tblmenu_modul.fldindex and tblmenu_liste.fldindex=".$page;
        //echo $qrymod."<br>";
        //$resmod = mysql_query($qrymod) or die(mysql_error());
        $resmod = db_query($qrymod,"",$dbtyp); 
        //$linmod = mysql_fetch_array($resmod);
        $linmod = db_fetch($resmod,$dbtyp); 
        $addr=$linmod[fldwebadr];
        //echo $addr."=addr<br>";
      break;
    }	 
    $inpos=strpos($addr,'?');
    if ($inpos>0) {
      $addr=$addr."&idwert=".$page;
    }

    if ($brver==="mobil") {
    	showmenuitem($line['fldmenu'],$addr,$line['fldIndex'],$vaterid);
    } else {	
      $newnode = $treeMenu->AddNode($line['fldmenu'],$addr,$target);
    }  
    page_menu($newnode,$line['fldmlindex'],$brver,$vaterid,$readonly,$dbtyp);

  }
  if ($brver==="mobil") {
  	 echo "</ul>"; 
  }	
}

?>