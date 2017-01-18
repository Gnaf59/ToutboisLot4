<%-- 
    Document   : AfficherCommande
    Created on : 17 janv. 2017, 13:17:17
    Author     : Matthieu
--%>

<jsp:include page="Menu.jsp" />


<section id="bodyAfficheCommande">
    <div class="container ">
        <div class="row">
            <table class="table">
                <thead>

                <th>Numéro de commande</th>
                <th>Nom fournisseur</th>
                <th>Date de commande</th>
                <th>Date de livraison commande</th>
                
                    <%--<th>Prix commande HT</th> --%>


                </thead>

                <tbody>
                <c:forEach items="${ commandes }" var="commande" varStatus="status">     
                    <tr>
                    <td><c:out value="${ commande.id_commande }" /></td>
                    <td><c:out value="${ commande.dateCommande }" /></td>
                    <td><c:out value="${ commande.libelle_EtatCommande }" /></td>
                    <td><c:out value="${ commande.dateLivraisonCommande }" /></td>
                    

                    </tr>
                </c:forEach>  
                </tbody>
            </table>
        </div>
    </div>

</section>