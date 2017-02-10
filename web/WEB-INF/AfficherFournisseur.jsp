<jsp:include page="Menu.jsp" />




<section id="bodyAfficheFournisseur">
    <div class="container ">
        
        <c:if test="${ not empty fournisseurAjoute}">
            <h3 id="message" style="text-align: center"> Le fournisseur : 
                <c:out value="${fournisseurAjoute.nomEntreprise }"/>, numéro 
                <c:out value="${fournisseurAjoute.idFournisseur }"/>
        est bien ajouté à la base de données</h3>
        </c:if> 
        
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Numéro de fournisseur</th>
                            <th>Libellé de l'entreprise</th>
                            <th>Nom du contact</th>
                            <th>Prénom du contact</th>
                            <th>Mail</th>
                            <th>Numéro de téléphone</th>
                            <th>Action</th>
                        </tr>                                
                    </thead>
                    <tbody>
                        <c:forEach items="${ fournisseurs }" var="fournisseur" varStatus="status">    
                            <tr>
                                <td><c:out value="${ fournisseur.idFournisseur }" /></td>
                                <td><c:out value="${ fournisseur.nomEntreprise }" /></td>
                                <td><c:out value="${ fournisseur.nomContact }" /></td>
                                <td><c:out value="${ fournisseur.prenomContact }" /></td>
                                <td><c:out value="${ fournisseur.mailFournisseur }" /></td>
                                <td><c:out value="${ fournisseur.numeroTelephone }" /></td>
                                <td>
                                    <c:choose>
                                        <c:when test="${ action == 0 }"><a href="FournisseurFormulaire?action=0&id=${ fournisseur.idFournisseur }"><button type="button" class="btn btn-primary">Modifier</button></a></c:when>
                                        <c:when test="${ action == 1 }"><a href="FournisseurFormulaire?action=1&id=${ fournisseur.idFournisseur }"><button type="button" class="btn btn-danger">Supprimer</button></a></c:when>
                                        <c:when test="${ action == 2 }"><a href="FournisseurFormulaire?action=2&id=${ fournisseur.idFournisseur }"><button type="button" class="btn btn-info">Consulter</button></a></c:when>
                                        <c:otherwise>Pas de bol...</c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>    
                    </tbody>
                </table>   
            </div>
        </div>
    </div>
</section>
