<header id="header"><!--header-->
	<div class="header_top"><!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> +34 671 60 59 76</a></li>
							<li><a href="#"><i class="fa fa-envelope"></i> elaboratumundo@gmail.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header_top-->
	
	<div class="header-middle"><!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="index.gsp"><asset:image src="etm_logo.png" alt="Elabora Tu Mundo"/></a>
					</div>

				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">

							<li><g:link controller="Inicio" action="index">Inicio</g:link></li>
							<li><g:link controller="Inicio" action="index">Mi cuenta</g:link></li>
							<li><g:link controller="Inicio" action="index">Lista de deseos</g:link></li>
							<li><g:link controller="Inicio" action="index">Checkout</g:link></li>
							<li><g:link controller="Inicio" action="index">Carro de compra</g:link></li>
							<li><g:link controller="Sesion" action="index">Login</g:link></li>

							<!-- <g:if test="${controllerName == "shopping"}"><li class="active"></g:if><g:else><li></g:else>
								<g:link controller="shopping" action="index">Shopping</g:link>
							</li>
							<g:if test="${controllerName == "reminder"}"><li class="active"></g:if><g:else><li></g:else>
								<g:link controller="reminder" action="index">Reminders</g:link>
							</li>
							<g:if test="${controllerName == "todo"}"><li class="active"></g:if><g:else><li></g:else>
								<g:link controller="todo" action="list">To Do</g:link>
							</li>

							<li><a href="#"><i class="fa fa-user"></i> Mi cuenta</a></li>
							<li><a href="#"><i class="fa fa-star"></i> Lista de deseos</a></li>
							<li><a href="checkout.gsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
							<li><a href="cart.gsp"><i class="fa fa-shopping-cart"></i> Carro de compra</a></li>
							<li><a href="login.gsp"><i class="fa fa-lock"></i> Login</a></li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header-middle-->

	<div class="header-bottom"><!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="index.gsp" class="active">Inicio</a></li>
							<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                	<li><g:link controller="Producto" action="index">Productos</g:link></li>
									<li><g:link controller="Inicio" action="index">Mi cuenta</g:link></li>
									<li><g:link controller="Inicio" action="index">Lista de deseos</g:link></li>
									<li><g:link controller="Inicio" action="index">Checkout</g:link></li>
									<li><g:link controller="Inicio" action="index">Carro de compra</g:link></li>
									<li><g:link controller="Sesion" action="index">Login</g:link></li>

                                    <!-- <li><a href="shop.gsp">Productos</a></li>
									<li><a href="product-details.gsp">Product Details</a></li> 
									<li><a href="checkout.gsp">Checkout</a></li> 
									<li><a href="cart.gsp">Cart</a></li> 
									<li><a href="login.gsp">Login</a></li> -->
                                </ul>
                            </li> 
							<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="blog.gsp">Blog List</a></li>
									<li><a href="blog-single.gsp">Blog Single</a></li>
                                </ul>
                            </li> 
							<li><a href="404.gsp">404</a></li>
							<li><a href="contact-us.gsp">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="search_box pull-right">
						<input type="text" placeholder="Search"/>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header-bottom-->
</header><!--/header-->