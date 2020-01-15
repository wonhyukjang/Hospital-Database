<?php

    
    $key = "";
    $error = "";
    $result = array();
    $len = 0;
    $table = $_GET['table'];
    $table = strtolower($table);
    $attr = "";
    $attr = preg_replace('/,+/', ',', $attr);
    
    if ($_GET['key'])      
        $key = $_GET['key'];
      
    else    
        $error = "Keyword not Found";

    if ($_GET['attribute'])      
        $attr = $_GET['attribute'];
      
    else    
        $error = "Attribute not Found";


    $servername = "localhost";
    $username = "root";
    $password = "root";
    $dbname = "cs503";
    // Create connection
    $conn = new mysqli($servername, $username, $password,$dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 


    $search = $key;

    if ($stmt = $conn->prepare("SELECT ". $attr . " FROM " . $table .
      " where " . $table ."_accession" . " = ? ")) {

   /* $stmt ->bind_param("sssss",$accession,$accession,$accession,$accession,$accession); */
    $stmt->bind_param("s",$search);

     /* execute query */
    $stmt->execute() or die("PROBLEM");

    $meta = $stmt->result_metadata(); 
    while ($field = $meta->fetch_field()) 
    { 
        $params[] = &$row[$field->name]; 

    } 

    call_user_func_array(array($stmt, 'bind_result'), $params); 

    while ($stmt->fetch()) { 
       foreach($row as $key => $val) 
        { 
          array_push($result, "Table : " . $table . "<br>" . $key . " : " . $val);
        } 
    }     
//   //     /* close statement */
     $stmt->close();
}
// /* close connection */
$conn->close();            
$len = count($result);           
        

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

      <title>Database Search</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
      
      <style type="text/css">
      
      html { 
          background: url(background.jpeg) no-repeat center center fixed; 
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;
          }
        
          body {
              
              background: none;
              
          }
          
          .container {
              
              text-align: center;
              margin-top: 100px;
              width: 450px;
              
          }
          
          input {
              
              margin: 20px 0;
              
          }
          
          #weather {
              
              margin-top:15px;
              
          }
          .btn-group {
            text-align: left;
            display: inline-block;
          }
         .form {
            margin-left: 30;
         }
      </style>
      
  </head>
  <body>
    
      <div class="container">
      
          <h1>What do you want to search?</h1>
          
       
   <form>
  <fieldset class="form-group">
    <label for="key">Select the table and enter attributes.</label>

<form name="period" action="all.php" method="POST">
<div align="left">
<select id="table" name="table" onchange="updateButton()">
<option value="Experiment">experiment</option>
<option value="Submission">submission</option>
<option value="Study">study</option>
<option value="Sample">sample</option>
<option value="Run">run</option>

</select>
    <input type="text" class="form" name="attribute" id="attribute" placeholder="Ex. sradb_updated" value = "<?php echo $_GET['attribute']; ?>">

</div>


</form>



    <input type="text" class="form-control" name="key" id="submit" placeholder="Ex. DRX000004" value = "<?php echo $_GET['submit']; ?>">


 
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
      
          <div id="result"><?php 

          if ($error OR $len == 0) {
                  echo '<div class="alert alert-danger" role="alert">
  '.$error.'
</div>';
                  
              }
          else {
              
              for($i = 0; $i < $len;$i++) {
                echo '<div class="alert alert-success" role="alert">
  '.$result[$i].'
</div>';
              }
            }

              

              
              ?></div>
      </div>


    <!-- jQuery first, then Bootstrap JS. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
  </body>
</html>