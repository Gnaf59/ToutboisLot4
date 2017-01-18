<jsp:include page="Menu.jsp" />
<form method="post" action="AjoutFournisseur">
    <div class="container">
        <fieldset class="form-group">
        <legend>Fournisseur n°<c:out value="${fournisseur.idFournisseur}" /> </legend>
            
        <div class="form-group">
            <label for="nomEntrepriseFournisseur">Nom Entreprise</label>
            <input type="text" class="form-control" id="nomEntrepriseFournisseur" name="nomEntrepriseFournisseur" 
                   value="<c:out value="${fournisseur.nomEntreprise}" />" />
        </div>
            
        <div class="form-group">
            <label for="siretFournisseur" >Numéro de Siret</label>
            <input class="form-control" type="text" id="siretFournisseur" name="siretFournisseur" value="<c:out value="${fournisseur.siretFournisseur}" />" >
        </div>
            
        <div class="form-group">
            <label for="nomContactFournisseur">Nom du contact</label>
            <input type="text" class="form-control" id="nomContactFournisseur" name="nomContactFournisseur" value="<c:out value="${fournisseur.nomContact}" />" >
        </div>
        
        <div class="form-group">
            <label for="prenomContactFournisseur">Prénom du contact</label>
            <input type="text" class="form-control" id="prenomContactFournisseur" name="prenomContactFournisseur" value="<c:out value="${fournisseur.prenomContact}" />" >
        </div>
        
        <div class="form-group">
            <label for="numVoieFournisseur">Numéro de voie</label>
            <input type="number" class="form-control" id="numVoieFournisseur" name="numVoieFournisseur" value="<c:out value="${fournisseur.numVoieFournisseur}" />" >
        </div>
        
        <div class="form-group">
            <label for="adresseFournisseur">Adresse</label>
            <input type="text" class="form-control" id="adresseFournisseur" name="adresseFournisseur" value="<c:out value="${fournisseur.adresseFournisseur}" />" >
        </div>
        
        <div class="form-group">
            <label for="complementAdresseFournisseur">Complément d'adresse</label>
            <input type="text" class="form-control" id="complementAdresseFournisseur" name="complementAdresseFournisseur" value="<c:out value="${fournisseur.complementAdresseFournisseur}" />" >
        </div>
        
        <div class="form-group">
            <label for="mailFournisseur">Mail fournisseur</label>
            <input type="text" class="form-control" id="mailFournisseur" name="mailFournisseur" value="<c:out value="${fournisseur.mailFournisseur}" />" >
        </div>
        
        <div class="form-group">
            <label for="numeroTelFournisseur">Numero téléphone du contact</label>
            <input type="text" class="form-control" id="numeroTelFournisseur" name="numeroTelFournisseur" value="<c:out value="${fournisseur.numeroTelephone}" />" >
        </div>
        
        <div class="form-group">
            <label for="villeFournisseur">Ville</label>
            <input type="text" class="form-control" id="villeFournisseur" name="villeFournisseur" value="<c:out value="${fournisseur.villeFournisseur}" />" >
        </div>
        
        <div class="form-group">
            <label for="paysFournisseur">Pays</label>
            <input type="text" class="form-control" id="paysFournisseur" name="paysFournisseur" value="<c:out value="${fournisseur.paysFournisseur}" />" >
        </div>
        
        <div class="form-group">
            <label for="codePostalFournisseur">Code postal</label>
            <input type="text" class="form-control" id="codePostalFournisseur" name="codePostalFournisseur" value="<c:out value="${fournisseur.codePostalFournisseur}" />" >
        </div> 
      </fieldset>
      <button type="submit" class="btn btn-primary">Modifier</button>
    </div>
</form>
