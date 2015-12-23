<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ct" uri="http://jstorm.alibaba.com/jsp/tags" %>
<%--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  --%>

<html>
<head>
    <jsp:include page="layout/_head.jsp"/>
</head>
<body>
<link rel="stylesheet" href="/assets/css/zTreeStyle/zTreeStyle.css">
<script src="/assets/js/jquery.ztree.all-3.5.min.js" type="text/javascript"></script>
<script src="/assets/js/storm.zk.js"  type="text/javascript"></script>

<style>
    ul.ztree {
        width: 100%;
        overflow-x: auto;
        overflow-y: auto;
    }

    div .zTreeBackground {
        width: 400px;
        height: 362px;
        text-align: left;
    }
</style>

<jsp:include page="layout/_header.jsp"/>

<div class="container-fluid">
    <!-- ========================================================== -->
    <!------------------------- zookeeper details --------------------->
    <!-- ========================================================== -->
    <h1>Zookeeper details</h1>

    <div class="page-content">
        <div>
            <div class="col-xs-7">
                <div class="row">
                    <input type="hidden" id="clusterName" value="${clusterName}"/>
                    <table class="table table-bordered table-hover table-striped sortable center"
                           data-table="${clusters.size() > PAGE_MAX ? "full" : "sort"}">
                        <thead>
                        <tr>
                            <th>Cluster Name</th>
                            <th>Zookeeper Servers</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td >${clusterName}</td>
                                <td onclick="showZKRoot('/', '${requestUri}')">${zkServers}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row panel panel-default">
                    <div class="panel-heading">Node Data</div>
                    <div class="panel-body">
                        <textarea rows="14" cols="69" style="overflow: auto;" id="data" readonly="readonly"></textarea>
                    </div>
                </div>
            </div>
            <div class="col-xs-5">
                <div class="zTreeBackground left" style="border: 1px solid #e2e2e2;height: 510px;overflow-y:auto;">
                    <ul id="zkTree" class="ztree"></ul>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="layout/_footer.jsp"/>
</body>
</html>