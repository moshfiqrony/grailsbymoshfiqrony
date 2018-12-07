<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'students.label', default: 'Students')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-students" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-students" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Department</th>
                    <th>Action</th>
                </tr>
                <g:each in="${studentsList}" var="person" status="i">

                        <tr>
                            <td>${person.id}</td>
                            <td><g:link action="show" resource="${person}">${person.name}</g:link></td>
                            <td>${person.address}</td>
                            <td>${person.dept}</td>
                            <td><g:link action="edit" resource="${person}">Edit</g:link></td>
                        </tr>


                </g:each>
            </table>

            <div class="pagination">
                <g:paginate total="${studentsCount ?: 0}" />
            </div>
        </div>
    </body>
</html>