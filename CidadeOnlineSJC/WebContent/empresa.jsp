<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Administrativo</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

       <nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
            <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Administrativo</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                               
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Mateus <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="principal.jsp"><i class="fa fa-fw fa-dashboard"></i> Pagina Inicial</a>
                    </li>
                   
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-edit"></i> Empresa <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="empresa.jsp"><i class="fa fa-fw fa-edit"></i> Nova Empresa </a>
                            </li>
                            <li>
                                <a href="empresa.jsp"><i class="fa fa-fw fa-edit"></i> Alterar Empresa </a>
                            </li>
                            <li>
                                <a href="forms.jsp"><i class="fa fa-fw fa-edit"></i> Deletar Empresa</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="categoria.jsp"><i class="fa fa-fw fa-edit"></i> Nova Catetoria</a>
                    </li>
                   
                   	<li>
                        <a href="loja.jsp"><i class="fa fa-fw fa-shop"></i> Nova Loja</a>
                    </li>
                    
                   
                </ul>
            </div>
        </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading 
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           Empresa
                        </h1>
                        <ol class="breadcrumb">
                            
                            <li class="active">
                                <i class="fa fa-edit"></i> Incluir
                            </li>
                        </ol>
                    </div>
                </div>
                 -->

                <div class="row">
                    <div class="col-lg-6">
                    
                    <h1 class="page-header">
                           Empresa
                        </h1>
                        

                        <form role="form">

                            <div class="form-group">
                                <label>Nome da Empresa</label>
                                <input class="form-control">
                                <p class="help-block">*</p>
                            </div>

                            <div class="form-group">
                                <label>CNPJ</label>
                                <input class="form-control">
                                <p class="help-block">*</p>
                            </div>

                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control">
                                <p class="help-block">*</p>
                            </div>
                            <div class="form-group">
                                <label>Associar a loja</label>
                                <select class="form-control">
                                    <option>Loja 1</option>
                                    <option>Loja 2</option>
                                    <option>Loja 3</option>
                                    <option>Loja 4</option>
                                    <option>Loja 5</option>
                                </select>
                            </div>

                        </form>
                        
                        

                    </div>
                    <div class="col-lg-6">
                        
							<h1 class="page-header">
                           	Criar usuario
                        </h1>
                        
                      

                        

                        <form role="form">
								
							<div class="form-group">
	                            <label>Usuario</label>
	  								<input class="form-control" type="text" placeholder="Crie um usuario" />
	  								<p class="help-block">*</p>
								<label>Senha</label>
	  								<input class="form-control" type="password" placeholder="Digite a sua senha" />
	  								<p class="help-block">*</p>
	  							<label>Repita a Senha</label>
	  								<input class="form-control" type="password" placeholder="Digite a sua senha novamente" />
	  								<p class="help-block">*</p>
							</div>
                              
                            <button type="submit" class="btn btn-default">Confirmar</button>
                            <button type="reset" class="btn btn-default">Apagar</button>

                        </form>

                        
                        

                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>