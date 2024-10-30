<!-- File: web/views/footer.jsp -->
        <!-- Fin del contenido principal -->
        
        <!-- Footer -->
        <footer>
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="footer_logo">
                                <a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo1.png" alt="Inmobiliaria S.A. Logo"></a>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="address">
                                <h3>Dirección</h3>
                                <p>
                                    Dirección: Calle 123, Ciudad, País<br>
                                    Tel: +1 123 456 789<br>
                                    Email: info@inmobiliaria.com
                                </p>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <ul class="social_links">
                                <li><img src="${pageContext.request.contextPath}/images/fb.png" alt="Facebook"></li>
                                <li><img src="${pageContext.request.contextPath}/images/tw.png" alt="Twitter"></li>
                                <li><img src="${pageContext.request.contextPath}/images/you.png" alt="YouTube"></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    <div class="container">
                        <p>© 2023 Todos los derechos reservados. Inmobiliaria S.A.</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Fin del footer -->
    </div> <!-- Cierre del div principal de contenido -->

    <!-- Overlay para el sidebar -->
    <div class="overlay"></div>

    <!-- Archivos JavaScript -->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/custom.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- Script para controlar el sidebar -->
    <script>
        $(document).ready(function () {
            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#dismiss, .overlay').on('click', function () {
                $('#sidebar').removeClass('active');
                $('.overlay').removeClass('active');
            });

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').addClass('active');
                $('.overlay').addClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });
        });
    </script>
</body>
</html>
