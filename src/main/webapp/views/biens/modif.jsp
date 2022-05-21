<%@ page import="models.Propriete" %>
<%@ page import="tools.DatabaseConnector" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Gestion des biens</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
<form action="" method="post">
    <input type="submit" name="logOut" id="logOut" value=" "></form>
<a href="../accueil.jsp"><img src="../images/logo.png"/> </a>
<center>
    <h1>Modification du bien</h1></center>

<% Propriete p = DatabaseConnector.getProprieteById(Integer.parseInt(request.getParameter("propertyId")));%>

<div id="cadre">
    <div id="formulaire">
        <form action="" method="post">
            <label id="lbl_refBien">Nombre de pièce</label>
            <input type="text" id="refBien" name="refBien" value="<%=p.getNumeroReference()%>" disabled="true"/>

            <label id="lbl_type">Type du bien</label>
            <select name="listT_biens">
                <option>Appartement</option>
                <option>Maison</option>
            </select>

            <label id="lbl_nbPiece">Nombre de pièce</label>
            <input type="number" id="stepper_nbPiece" name="stepper_nbPiece" min="1" max="100" value="2"/>

            <label id="lbl_superficie">Superficie</label>
            <input type="text" id="tf_superficie" name="tf_superficie" value=30>

            <label id="lbl_etatHab">Etat d'habitation</label>
            <select name="list_type" id="list_type">
                <option>Bon état</option>
                <option>Neuf</option>
                <option>Très bon état</option>
            </select>

            <label id="lbl_garage">Garage</label>
            <input type="number" id="stepper_garage" name="stepper_garage" min="0" max="10" value="0"/>

            <label id="lbl_prop">Proprietaire</label>
            <select name="list_prop" id="list_prop">
                <option></option>
                <option>prop1</option>
                <option>prop2</option>
            </select>

            <label id="lbl_adr">Adresse</label>
            <input type="text" id="tf_adr" name="tf_adr" value="2 rue malou">

            <label id="lbl_cp">Code postal</label>
            <input type="text" id="tf_cp" name="tf_cp" value="06230">

            <label id="lbl_ville">Ville</label>
            <input type="text" id="tf_ville" name="tf_ville" value="Nice">

            <label id="lbl_dispo">Disponibilité</label>
            <input type="date" id="date" name="date" value="2022-06-01">

            <center>
                <input type="submit" name="btn_submit" id="btn_submit" value="Modifier le bien"></center>
        </form>
    </div>
</div>
</body>

</html>