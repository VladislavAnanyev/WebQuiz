<#import "parts/common.ftl" as e>

<@e.page>

    <div><#--${test}-->
        <#list myquiz as test>

            <#list test.quizzes as quiz>

            <div class="card my-3" id="${test.id}">
                <div class="m-2">
                    <span>${quiz.title}</span>
                </div>
                <div class="card-footer text-muted">
                    <i>${quiz.text}</i>
                </div>
                <div class="card-footer text-muted">
                    <#list quiz.options as options>
                        ${options}
                    </#list>
                </div>
                <div class="card-footer text-muted">
                    ${quiz.text}
                </div>
                <div class="card-footer text-muted" id="thisid">
                    ${test.id?c}
                </div>
                <div class="card-footer text-muted">
                    <#list quiz.answer as answers>
                        ${answers}
                    </#list>
                </div>

                <form method="get" action="/api/quizzes/${quiz.id?c}/info/" class="form-inline">
                    <button type="submit" class="btn btn-primary ml-2 my-1">Подробнее</button>
                </form>


                <script src="/static/deletereq.js"></script>

                <form class="form-inline">
                    <button onclick="deleteQuiz(${test.id?c})" type="submit" class="btn btn-primary ml-2 my-1">Удалить</button>
                </form>

                <form method="get" action="/update/${quiz.id?c}" class="form-inline">
                    <button type="submit" class="btn btn-primary ml-2 my-1">Изменить</button>
                </form>

                <div></div>


            </div>
        <#else>
            No message
        </#list>
        </#list>
    </div>
</@e.page>