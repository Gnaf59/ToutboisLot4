<jsp:include page="Menu.jsp" />
<c:choose>
    <c:when test="${action == 0}">
        <form method="post" action="ModifierFournisseur">
    </c:when>
    <c:when test="${action == 1}">
        <form method="post" action="SupprimerFournisseur">
    </c:when>
    <c:when test="${action == 2}">
        <form method="post" action="AfficheFournisseur">
    </c:when>
    <c:when test="${action == 3}">
        <form method="post" action="AjoutFournisseur">
    </c:when>
</c:choose>
    <div class="container">
        <fieldset class="form-group" <c:if test="${ action==1 || action==2}">disabled</c:if>>
            <c:choose>
                <c:when test="${ action < 3 }">
                    <legend>Fournisseur n°<c:out value="${fournisseur.idFournisseur}"/></legend>
                </c:when>
                <c:when test="${ action == 3 }"><legend>Nouveau Fournisseur</legend></c:when>
                <c:otherwise>Pas de bol...</c:otherwise>
            </c:choose>


             <c:if test="${ not empty fournisseur}">
            <h3 id="message" style="text-align: center"> Erreur d'enregistrement , le fournisseur : 
               n'est pas  ajouté à la base de données</h3>
        </c:if> 
                
                
                
            <div class="form-group">
                <label for="nomEntrepriseFournisseur">Nom Entreprise *</label><c:out value="${ champsGlobal }" />   
                <input type="text" class="form-control" id="nomEntrepriseFournisseur" name="nomEntrepriseFournisseur" 
                       value="<c:out value="${fournisseur.nomEntreprise}" />"
            </div>

            <div class="form-group">
                <label for="siretFournisseur" >Numéro de Siret*</label><c:out value="${ champsSiret }" />
                <input class="form-control" type="text" id="siretFournisseur" name="siretFournisseur"value="<c:out value="${fournisseur.siretFournisseur}" />"
            </div>

            <div class="form-group">
                <label for="nomContactFournisseur">Nom du contact </label>           
                <input type="text" class="form-control" id="nomContactFournisseur" name="nomContactFournisseur" value="<c:out value="${fournisseur.nomContact}" />"
                       
            </div>

            <div class="form-group">
                <label for="prenomContactFournisseur">Prénom du contact </label> 
                <input type="text" class="form-control" id="prenomContactFournisseur" name="prenomContactFournisseur" value="<c:out value="${fournisseur.prenomContact}" />"
            </div>

            <div class="form-group">
                <label for="numVoieFournisseur">Numéro de voie*</label><c:out value="${ champsVoie }" />
                <input type="number" class="form-control" id="numVoieFournisseur" name="numVoieFournisseur" value="<c:out value="${fournisseur.numVoieFournisseur}" />"
            </div>

            <div class="form-group">
                <label for="adresseFournisseur">Adresse</label>  
                <input type="text" class="form-control" id="adresseFournisseur" name="adresseFournisseur" value="<c:out value="${fournisseur.adresseFournisseur}" />"
            </div>

            <div class="form-group">
                <label for="complementAdresseFournisseur">Complément d'adresse</label>
                <input type="text" class="form-control" id="complementAdresseFournisseur" name="complementAdresseFournisseur" value="<c:out value="${fournisseur.complementAdresseFournisseur}" />"
            </div>

            <div class="form-group">
                <label for="mailFournisseur">Mail fournisseur*</label><c:out value="${ mailInvalide }" />
                <input type="text" class="form-control" id="mailFournisseur" name="mailFournisseur"value="<c:out value="${fournisseur.mailFournisseur}" />"
               
            </div>

            <div class="form-group">
                <label for="numeroTelFournisseur">Numéro téléphone du contact</label>
                <input type="text" class="form-control" id="numeroTelFournisseur" name="numeroTelFournisseur" value="<c:out value="${fournisseur.numeroTelephone}" />"
            </div>

            <div class="form-group">
                <label for="villeFournisseur">Ville</label>
                <input type="text" class="form-control" id="villeFournisseur" name="villeFournisseur" value="<c:out value="${fournisseur.villeFournisseur}" />"
            </div>

            <div class="form-group">
                <label for="paysFournisseur">Pays</label>
                <input type="text" class="form-control" id="paysFournisseur" name="paysFournisseur" value="<c:out value="${fournisseur.paysFournisseur}" />"
            </div>

            <div class="form-group">
                <label for="codePostalFournisseur">Code postal</label> <c:out value="${ cpInvalide }" /> 
                <input type="text" class="form-control" id="codePostalFournisseur" name="codePostalFournisseur" value="<c:out value="${fournisseur.codePostalFournisseur}" />"           
            </div> 
                               
        </fieldset>
            
        <c:if test="${ action < 3}">
            <input type="hidden" name="idFournisseur" value="${fournisseur.idFournisseur}" />
        </c:if>
            
        <c:choose>
            <c:when test="${ action == 0 }"><button type="submit" class="btn btn-primary">Modifier</button></c:when>
            <c:when test="${ action == 1 }"><button type="submit" class="btn btn-danger">Supprimer</button></c:when>
            <c:when test="${ action == 2 }"><button type="submit" class="btn btn-info">Retour liste fournisseurs</button></c:when>
            <c:when test="${ action == 3 }"><button type="submit" class="btn btn-primary">Ajouter</button></c:when>
            <c:otherwise>Pas de bol...</c:otherwise>
        </c:choose>
    </div>
</form>
