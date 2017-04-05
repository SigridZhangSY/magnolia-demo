[#assign title = content.title!"Home"]
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    [#--bootstrap css--]
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/bootstrap-3.3.5/bootstrap.min.css ">
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/bootstrap-3.3.5/bootstrap-theme.min.css ">
    [#--Custom CSS--]
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/one-pager.css?z=123">
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/navigation.css?z=123">
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/carousel.css?z=123">
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/imgLink.css?z=123">
    <link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/footer.css?z=123">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    [@cms.page /]
</head>
<body>

[@cms.area name="navigation"/]

[@cms.area name="content-sections"/]

[@cms.area name="footer"/]

[#--jquery and bootstrap js--]
<script src="${ctx.contextPath}/.resources/one-pager-module/webresources/bootstrap-3.3.5/jquery.js"></script>
<script src="${ctx.contextPath}/.resources/one-pager-module/webresources/bootstrap-3.3.5/bootstrap.min.js"></script>
<script src="${ctx.contextPath}/.resources/one-pager-module/webresources/bootstrap-3.3.5/jquery.easing.min.js"></script>
[#--custom js--]
<script src="${ctx.contextPath}/.resources/one-pager-module/webresources/js/one-pager.js"></script>
</body>
</html>