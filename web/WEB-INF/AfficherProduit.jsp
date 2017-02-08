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
                <th>Date de commande</th>
                <th>Etat Commande</th>
                <th>Date de livraison commande</th>


                </thead>

                <tbody>
                <c:forEach items="${ produits }" var="produit" varStatus="status">     
                    <tr>
                    <td><c:out value="${ produit.codeProduit }" /></td>
                    <td><c:out value="${ produit.libelleProduit }" /></td>
                    <td><c:out value="${ produit.prixUnitaireProduit }" /></td>
                    <td><c:out value="${ produit.descriptionProduit }" /></td>



                    </tr>
                </c:forEach>  
                </tbody>
            </table>
        </div>
    </div>

</section>