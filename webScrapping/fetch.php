<?php
    $con = mysqli_connect("localhost","root","","scrapper");
    if(!$con){
        die("Database not connected");
    }

    $result =" SELECT * FROM phone_dat " ;
    $display=mysqli_query($con, $result);

?>

<html>
    <head>
        <title>Scrapped Data</title>

    <style>
        body{
            background:black;
        }

        .container{
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }

        caption{
            background:red;
            color:white;
            font-weight: bold;
            padding: 10px;
        }

        .table_view{
            margin:25px 0;
            font: size 0.9em;
            min-width: 400px;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }

        .table_view tr{
            color:white;
            font-weight: bold;
            border-bottom: 1px solid blue;
            padding:8px;
        }
        
        .table_view th{
            color:red;
        }

        .table_view tr:nth-of-type(even){
            background-color: blue;
        }

        .table-view th, .table-view td{
            padding: 12px 15px;
        }


    </style>

    </head>
    <body>
        <div class = "container">
            <table  style="border-collapse:collapse;" class="table_view">
                <caption>JUMIA PHONES</caption>
                <tr>
                    <th>#</th>
                    <th>PHONE NAME</th>
                    <th>CURRENT PRICE</th>
                    <th>OLD PRICE</th>
                </tr>
                 <!-- fetch data from the database into the table -->
                 <?php
                
                while ( $row=mysqli_fetch_assoc($display)) {
                    ?>
                <tr>
                    <td><?php echo $row['id'];?></td>
                    <td><?php echo $row['Name'];?></td>
                    <td><?php echo $row['Current_price'];?></td>
                    <td><?php echo $row['Old_price'];?></td>
                </tr>
                <?php } ?>
            </table>
        </div>
    </body>
</html>