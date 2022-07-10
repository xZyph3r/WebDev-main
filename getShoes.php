<!DOCTYPE html>
<html>
    <head>
        <style>
            table {
            width: 100%;
            border-collapse: collapse;
            }

            table, td, th {
            border: 1px solid black;
            padding: 5px;
            }

            th {text-align: left;}
        </style>
    </head>
<body>

    <?php
    $q = intval($_GET['q']);

    $con = mysqli_connect("localhost", "root", "", "webshop");
    if (!$con){
    die('Could not connect: ' . mysqli_error($con));
    }

    mysqli_select_db($con,"webshop");
    $sql="SELECT * FROM artikel WHERE id = '".$q."'" ;
    $result = mysqli_query($con,$sql);

    $sql2="SELECT * FROM anzahl WHERE id = '".$q."'" ;
    $result2 = mysqli_query($con,$sql2);
    echo "<table>
    <tr>
    <th>Modell</th>
    <th>Preis</th>
    <th>Farbe</th>
    <th>Größe</th>
    <th>Anzahl</th>
    </tr>";
    while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['Name'] . "</td>";
    echo "<td>" . $row['Preis'] . "</td>";
    $row = mysqli_fetch_array($result2);
    echo "<td>" . $row['Farbe'] . "</td>";
    echo "<td>" . $row['Größe'] . "</td>";
    echo "<td>" . $row['Anzahl'] . "</td>";
    echo "</tr>";
    }
    echo "</table>";
    mysqli_close($con);
    ?>
</body>
</html>