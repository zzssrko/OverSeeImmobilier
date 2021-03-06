<%@ page import="tools.DatabaseConnector" %>
<%@ page import="java.util.Objects" %>
<%@ page import="models.Proprietaire" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Gestion des biens</title>
    <link rel="stylesheet" href="../css/style.css">

</head>
<body>
<jsp:include page="../CheckSession.jsp"/>
<header>
    <jsp:include page="../header.jsp"/>
</header>


<div style="text-align: center;"><h1> Ajout d'un bien</h1>
</div>
<div id="cadre">
    <div id="formulaire">

        <form action="/OverSeeImmobilier/ManagePropertyServlet" method="post">
            <label id="lbl_type">Type du bien</label>
            <select name="listT_biens" id="listT_biens">
                <option></option>
                <option>Appartement</option>
                <option>Maison</option>
            </select>
            <br/>

            <label id="lbl_nbPiece">Nombre de pièce</label>
            <input type="number" id="stepper_nbPiece" name="stepper_nbPiece" min="1" max="100" value="1"/>
            <br/>
            <label id="lbl_superficie">Superficie</label>
            <input type="text" id="tf_superficie" name="tf_superficie">
            <br/>

            <label id="lbl_etatHab">Etat d'habitation</label>
            <select name="list_type" id="list_type">
                <option></option>
                <option>Neuf</option>
                <option>Tres Bon Etat</option>
                <option>Bon Etat</option>
            </select>
            <br/>

            <label id="lbl_garage">Garage</label>
            <input type="number" id="stepper_garage" name="stepper_garage" min="0" max="10" value="0"/>
            <br/>
            <label id="lbl_prix">Prix</label>
            <input type="number" id="stepper_prix" name="stepper_prix" min="0" value="0"/>
            <br/>

            <label id="lbl_prop">Proprietaire</label>
            <select name="list_prop" id="list_prop">
                <option></option>
                <% for (Proprietaire personne : DatabaseConnector.getAllProprietaires()) { %>

                <option value="<%=personne.getIdProprietaire()%>"><%=Objects.requireNonNull(DatabaseConnector.getPersonneById((int) DatabaseConnector.getProprietaireById((int) personne.getIdProprietaire()).getIdPersonne())).getNomComplet()%>
                </option>

                <% } %>
            </select>
            <a href="../clients/ajout.jsp" target="_self"
               style="font-size:1.5vw; position: relative; left:55vw; bottom:3.3vw;">Ajouter un proprietaire</a>

            <br/>
            <label id="lbl_adr">Adresse</label>
            <input type="text" id="tf_adr" name="tf_adr">
            <br/>
            <label id="lbl_cp">Code postal</label>
            <input type="text" id="tf_cp" name="tf_cp">
            <br/>

            <label id="lbl_ville">Ville</label>
            <input type="text" id="tf_ville" name="tf_ville">
            <br/>

            <label id="lbl_locVent">Location Ou Vente</label>
            <input type="text" id="tf_locVent" name="tf_locVent">

            <label id="lbl_dispo">Disponibilité</label>
            <input type="date" id="date" name="date">
            <br/>

            <input type="hidden" name="action" value="add">

            <div style="text-align: center;">
                <input type="submit" name="btn_submit" id="btn_submit" value="Ajouter un bien">
            </div>
        </form>
    </div>
</div>

</body>
</html>