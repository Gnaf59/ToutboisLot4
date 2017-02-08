<jsp:include page="Menu.jsp" />
<form method="post" action="AjoutFournisseur">
    <div class="container">
        <fieldset class="form-group">
        <legend>Nouveau Fournisseur</legend>
            
        <div class="form-group">
            <label for="nomEntrepriseFournisseur">Nom Entreprise</label>
            <input type="text" class="form-control" id="nomEntrepriseFournisseur" name="nomEntrepriseFournisseur" >
        </div>
            
        <div class="form-group">
            <label for="siretFournisseur" >Numéro de Siret</label>
            <input class="form-control" type="text" id="siretFournisseur" name="siretFournisseur" >
        </div>
            
        <div class="form-group">
            <label for="nomContactFournisseur">Nom du contact</label>
            <input type="text" class="form-control" id="nomContactFournisseur" name="nomContactFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="prenomContactFournisseur">Prénom du contact</label>
            <input type="text" class="form-control" id="prenomContactFournisseur" name="prenomContactFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="numVoieFournisseur">Numéro de voie</label>
            <input type="number" class="form-control" id="numVoieFournisseur" name="numVoieFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="adresseFournisseur">Adresse</label>
            <input type="text" class="form-control" id="adresseFournisseur" name="adresseFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="complementAdresseFournisseur">Complément d'adresse</label>
            <input type="text" class="form-control" id="complementAdresseFournisseur" name="complementAdresseFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="mailFournisseur">Mail fournisseur</label>
            <input type="text" class="form-control" id="mailFournisseur" name="mailFournisseur" >
            <c:out value="${ mailInvalide }" />
        </div>
        
        <div class="form-group">
            <label for="numeroTelFournisseur">Numero téléphone du contact</label>
            <input type="text" class="form-control" id="numeroTelFournisseur" name="numeroTelFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="villeFournisseur">Ville</label>
            <input type="text" class="form-control" id="villeFournisseur" name="villeFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="paysFournisseur">Pays</label>
            <input type="text" class="form-control" id="paysFournisseur" name="paysFournisseur" >
        </div>
        
        <div class="form-group">
            <label for="codePostalFournisseur">Code postal</label>
            <input type="text" class="form-control" id="codePostalFournisseur" name="codePostalFournisseur" >
        </div> 
      </fieldset>
      <button type="submit" class="btn btn-primary">Ajouter</button>
    </div>
</form>