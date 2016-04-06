<%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 26.03.2016
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="table-responsive">
    <table class="table table-bordered table-condensed">

        <tr>
            <th>
                <p class="text-center">
                    <span class="glyphicon glyphicon-trash"></span> Удалить
                </p>
            </th>
            <th width="30%">
                <p class="text-center">
                    <span class="glyphicon glyphicon-align-justify"></span> Тип
                </p>
            </th>
            <th>
                <p class="text-center">
                    <span class="glyphicon glyphicon-calendar"></span> Дата
                </p>
            </th>
            <th>
                <p class="text-center">
                    <span class="glyphicon glyphicon-arrow-up"></span> | <span class="glyphicon glyphicon-arrow-down"></span>
                </p>
            </th>
            <th>
                <p class="text-center">
                    <span class="glyphicon glyphicon-usd"></span> Валюта
                </p>
            </th>
            <th>
                <p class="text-center">
                    <span class="glyphicon glyphicon-pencil"></span> Сумма
                </p>
            </th>
        </tr>

        <c:forEach items="${operationHistoryList}" var="operation">
            <tr>
            <th style="vertical-align: middle" rowspan="${operation.transactionList.size()}">
                <div class="col-xs-12">
                    <c:choose>
                        <c:when test="${deleteOperation}">
                            <p class="text-center">Оп. удалена</p>
                        </c:when>
                        <c:otherwise>
                            <form action="historyDeleteOperation" method="post">
                                <button type="submit" class="btn btn-inverse col-xs-12">Удалить</button>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <input type="hidden" name="operationId" value="<c:out value="${operation.operationId}"/>"/>
                            </form>
                        </c:otherwise>
                    </c:choose>

                </div>
            </th>
            <th style="vertical-align: middle" rowspan="${operation.transactionList.size()}" width="30%">
                <p class="text-center"><c:out value="${operation.operationType}"/> <span class="comment"><c:out value="${operation.description}"/></span></p></th>
            <th style="vertical-align: middle" rowspan="${operation.transactionList.size()}">
                <p class="text-center"><c:out value="${operation.timeF}"/></p></th>
            <c:set var="first" value="false"/>
            <c:forEach items="${operation.transactionList}" var="transaction">
                <c:if test="${first}">
                    <tr>
                </c:if>
                <th><p class="text-center">
                    <c:choose>
                        <c:when test="${transaction.kindTransaction=='1'}">
                            <span class="glyphicon glyphicon-arrow-up"></span> Зачисление
                        </c:when>
                        <c:otherwise>
                            <span class="glyphicon glyphicon-arrow-down"></span> Списание
                        </c:otherwise>
                    </c:choose>
                </p>
                </th>
                <th><p class="text-center"><c:out value="${transaction.currency}"/></p></th>
                <th><p class="text-center"><c:out value="${transaction.ammountM}"/></p></th>
                </tr>
                <c:set var="first" value="true"/>
            </c:forEach>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
