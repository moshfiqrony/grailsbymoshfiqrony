<%@ page import="bitmascot003.Department" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'students.label', default: 'Students')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-students" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="students" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-students" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.students}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.students}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form resource="${this.students}" method="POST">
                <div class="row justify-content-center">
                <fieldset class="form">
                    <div class="row form-group">
                        <div class="col-1 form-group">
                            <f:input property="name" bean="students" placeholder="Enter Name"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-1 form-group">
                            <f:input property="address" bean="students" placeholder="Enter Address"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-1 form-group ">
                            <g:select name="dept" from="${bitmascot003.Department.list()}" value="${bitmascot003.Department.name}" optionValue="name" optionKey="name"/>
                        </div>
                    </div>
                </fieldset>
                </div>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
