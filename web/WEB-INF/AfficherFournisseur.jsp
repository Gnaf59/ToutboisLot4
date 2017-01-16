<jsp:include page="Menu.jsp" />


<section id="bodyAfficheFournisseur">
    <div class="container ">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h2 class="text-left"> Nom du fournisseur :  <c:out value="${ Fournisseur.nomEntreprise }"/></h2>
                        
                        <ul class="list-group">
                             <li class="list-group-item">
                                <h4 class="list-group-item-heading">Nom contact</h4>
                                <p class="list-group-item-text"> <c:out value="${ Fournisseur.nomContact }"/></p>
                            </li>
                             <li class="list-group-item">
                                <h4 class="list-group-item-heading">Prénom contact</h4>
                                <p class="list-group-item-text"> <c:out value="${ Fournisseur.prenomContact }"/></p>
                            </li>
                             <li class="list-group-item">
                                <h4 class="list-group-item-heading">Adresse de livraison</h4>
                                <p class="list-group-item-text"> <c:out value="${ Fournisseur.nomContact }"/></p>
                            </li>
                             <li class="list-group-item">
                                <h4 class="list-group-item-heading">Adresse de facturation</h4>
                                <p class="list-group-item-text"> <c:out value="${ Fournisseur.nomContact }"/></p>
                            </li>
                             <li class="list-group-item">
                                <h4 class="list-group-item-heading">Adresse mail</h4>
                                <p class="list-group-item-text"> <c:out value="${ Fournisseur.mailFournisseur }"/></p>
                            </li>
                             <li class="list-group-item">
                                <h4 class="list-group-item-heading">Numéro de téléphone</h4>
                                <p class="list-group-item-text"> <c:out value="${ Fournisseur.numeroTelephone }"/></p>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row">

                    <table class="table">
                        <thead>
                        <th>Numéro de commande</th>
                        <th>Date de commande</th>
                        <th>Date de livraison commande</th>
                        <th>Etat commande</th>
                        <th>Prix commande HT</th>                                
                        </thead>
                        <tbody>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>   
</section>
