<%-- 
    Document   : createtask
    Author     : Team ENMAKA
--%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="no">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width= device-width, initial-scale = 1">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <title>Funksjoner</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/menu.jsp"/>
        <jsp:include page="/WEB-INF/views/styling.jsp"/>
        <div class="container">
            <div class="jumbotron"> 

                <h3>Oppgave </h3>
                <div  id="questionGroup" class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapseTaskText">Oppgavetekst</a>
                            </h4>
                        </div>
                        <div id="collapseTaskText" class="panel-collapse collapse">
                            <div class="panel-body">
                                <!--<textarea name="questionText" rows="4" cols="40" form="questionForm" ></textarea>-->



                                <form id ="questionForm">
                                    <textarea id="questionText" class ='form-control'style='min-width: 100%' ></textarea>
                                    <input type="submit" value="Lagre" id='save' disabled>
                                    <!-- <script>
                                         $(document).ready(function () {
                                             $('input[type="submit"]').attr('disabled', true);
                                             $('input[type="text"],textarea').on('keyup', function () {
                                                 var textarea_value = $("#questionText").val();
                                                 if (textarea_value != '') {
                                                     $('input[type="submit"]').attr('disabled', false);
                                                 } else {
                                                     $('input[type="submit"]').attr('disabled', true);
                                                 }
                                             });
 
                                         });
                                         
                                     </script> -->
                                </form>
                                <script type='text/javascript'>
                                    window.onload() = function(){
                                        document.getElementById("questionText").onkeyup = checkWordCount;
                                        checkWordCount();
                                    }
                                    ;
                                    function checkWordCount(){
                                    if (document.getElementById("questionText").value == ""){
                                    document.getElementById("save").disabled = true;
                                    } else{
                                    document.getElementById("save").disabled = false;
                                    }
                                    /*  var textarea_value = $("#questionText").val();     
                                     if( $('questionText').val().lenght > 0 ){
                                     $('.save').prop('disabled', false);
                                     else{
                                     $('.save').prop('disabled', true);
                                     }
                                     });
                                     }
                                     */

                                </script>
                            </div>
                        </div>
                    </div> 
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapsePicUpload">Legg til bilde</a>
                            </h4>
                        </div>
                        <div id="collapsePicUpload" class="panel-collapse collapse">
                            <div class="panel-body">          
                                <form>
                                    <input type="file" id="myFile" accept=".img,.jpg,.jpeg"> <!--Restriksjoner på filtype--> 
                                    <div class="col-sm-offset-5"><a class="btn btn-success btn-lg" href="">Last opp</a></div>
                                    <h5>Link til bilde</h5>                                    
                                    <input id ="picRef" type="url" name="pictureUrl" value="http://" >
                                    <input type="submit" value="Lagre">
                                </form>

                            </div>
                        </div>
                    </div>                 
                    <div class="panel panel-default">
                        <div class =" panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapse2">Legg til GeoGebra</a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body" style='max-width: 100%'>
                                
                                    <script type="text/javascript" src="https://www.geogebra.org/scripts/deployggb.js"></script>
                                    <script type="text/javascript">

                                            var parameters = {"prerelease": false, "showToolBar": true, "borderColor": null, "showMenuBar": true, "showAlgebraInput": false,
                                                    "showResetIcon": true, "enableLabelDrags": false, "enableShiftDragZoom": true, "enableRightClick": false, "capturingThreshold": null, "showToolBarHelp": false,
                                                    "errorDialogsActive": true, "useBrowserForJS": false};
                                            var applet = new GGBApplet('5.0', parameters);
                                            applet.setJavaCodebase('GeoGebra/Java/5.0');
                                            window.onload = function () {
                                            applet.inject('applet_container', 'preferHTML5');
                                            }
                                    </script>
                                    <div id="applet_container"></div>
                                
                            </div>
                        </div>
                    </div>               
                    <h3>Svar</h3>
                    <div  id="questionGroup" class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" href="#collapse4">Oppgavetekst</a>
                                </h4>
                            </div>
                            <div id="collapse4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <textarea rows="4" cols="40" ></textarea>
                                    <button onclick="">Legg til graf</button>
                                    <button onclick="">Legg til bilde</button>
                                </div>
                            </div>
                        </div>                 
                        <div class="panel panel-default">
                            <div class =" panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" href="#collapse5">Legg til GeoGebra</a>
                                </h4>
                            </div>
                            <div id="collapse5" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div>
                                        <script type="text/javascript" src="https://www.geogebra.org/scripts/deployggb.js"></script>
                                        <script type="text/javascript">

                                                var parameters = {"prerelease": false, "showToolBar": true, "borderColor": null, "showMenuBar": true, "showAlgebraInput": false,
                                                        "showResetIcon": true, "enableLabelDrags": false, "enableShiftDragZoom": true, "enableRightClick": false, "capturingThreshold": null, "showToolBarHelp": false,
                                                        "errorDialogsActive": true, "useBrowserForJS": false};
                                                var applet = new GGBApplet('5.0', parameters);
                                                applet.setJavaCodebase('GeoGebra/Java/5.0');
                                                window.onload = function () {
                                                applet.inject('applet_container', 'preferHTML5');
                                                }
                                        </script>
                                        <div id="applet_container"></div>
                                    </div>
                                </div>
                            </div>
                        </div>                 

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" href="#collapse6">Flervalgsoppgaver</a>
                                </h4>
                            </div>
                            <div id="collapse6" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <textarea rows="4" cols="40" ></textarea>                                   
                                </div>
                            </div>
                        </div>                 
                    </div>
                    <div class="col-lg-1"><a class="btn btn-primary btn-lg" href="choosetypeview">Tilbake</a></div>
                    <div class="col-sm-offset-5"><a class="btn btn-success btn-lg" href="">Send inn oppgave</a></div>                            
                </div> 

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                </body>
                </html>
