<jsp:include page="Menu.jsp" />
<form method="post" action="AjoutFournisseur">
    <div class="container">
        <fieldset class="form-group">
            <c:choose>
                <c:when test="${ action == 0 }"><legend>Fournisseur n°<c:out value="${fournisseur.idFournisseur}"/></legend></c:when>
                <c:when test="${ action == 1 }"><legend>Fournisseur n°<c:out value="${fournisseur.idFournisseur}"/></legend></c:when>
                <c:when test="${ action == 2 }"><legend>Fournisseur n°<c:out value="${fournisseur.idFournisseur}"/></legend></c:when>
                <c:when test="${ action == 3 }"><legend>Nouveau Fournisseur</legend></c:when>
                <c:otherwise>Pas de bol...</c:otherwise>
            </c:choose>


            <div class="form-group">
                <label for="nomEntrepriseFournisseur">Nom Entreprise</label>
                <input type="text" class="form-control" id="nomEntrepriseFournisseur" name="nomEntrepriseFournisseur" 
                       <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.nomEntreprise}" />"</c:if> />
            </div>

            <div class="form-group">
                <label for="siretFournisseur" >Numéro de Siret</label>
                <input class="form-control" type="text" id="siretFournisseur" name="siretFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.siretFournisseur}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="nomContactFournisseur">Nom du contact</label>
                <input type="text" class="form-control" id="nomContactFournisseur" name="nomContactFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.nomContact}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="prenomContactFournisseur">Prénom du contact</label>
                <input type="text" class="form-control" id="prenomContactFournisseur" name="prenomContactFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.prenomContact}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="numVoieFournisseur">Numéro de voie</label>
                <input type="number" class="form-control" id="numVoieFournisseur" name="numVoieFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.numVoieFournisseur}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="adresseFournisseur">Adresse</label>
                <input type="text" class="form-control" id="adresseFournisseur" name="adresseFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.adresseFournisseur}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="complementAdresseFournisseur">Complément d'adresse</label>
                <input type="text" class="form-control" id="complementAdresseFournisseur" name="complementAdresseFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.complementAdresseFournisseur}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="mailFournisseur">Mail fournisseur</label>
                <input type="text" class="form-control" id="mailFournisseur" name="mailFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.mailFournisseur}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="numeroTelFournisseur">Numero téléphone du contact</label>
                <input type="text" class="form-control" id="numeroTelFournisseur" name="numeroTelFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.numeroTelephone}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="villeFournisseur">Ville</label>
                <input type="text" class="form-control" id="villeFournisseur" name="villeFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.villeFournisseur}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="paysFournisseur">Pays</label>
                <input type="text" class="form-control" id="paysFournisseur" name="paysFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.paysFournisseur}" />"</c:if> >
            </div>

            <div class="form-group">
                <label for="codePostalFournisseur">Code postal</label>
                <input type="text" class="form-control" id="codePostalFournisseur" name="codePostalFournisseur" <c:if test="${ action < 3 }" >value="<c:out value="${fournisseur.codePostalFournisseur}" />"</c:if> >
            </div> 
        </fieldset>
        <c:choose>
            <c:when test="${ action == 0 }"><button type="submit" class="btn btn-primary">Modifier</button></c:when>
            <c:when test="${ action == 1 }"><button type="submit" class="btn btn-danger">Supprimer</button></c:when>
            <c:when test="${ action == 2 }"><button type="submit" class="btn btn-info">Retour liste fournisseurs</button></c:when>
            <c:when test="${ action == 3 }"><button type="submit" class="btn btn-primary">Ajouter</button></c:when>
            <c:otherwise>Pas de bol...</c:otherwise>
        </c:choose>
    </div>
</form>
