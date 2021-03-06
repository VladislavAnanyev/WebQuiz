<#import "parts/common.ftl" as c>
<@c.page>

    <form action="/api/register" method="post">
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="validationDefault01">Имя</label>
                <input type="text" class="form-control" id="validationDefault01" name="firstName" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="validationDefault02">Фамилия</label>
                <input type="text" class="form-control" id="validationDefault02" name="lastName" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="validationDefault03">Почта</label>
                <input type="text" class="form-control" id="validationDefault03" name="email" required>
            </div>
        </div>
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="validationDefault03">Город</label>
                <input type="text" class="form-control" id="validationDefault03">
            </div>
            <div class="col-md-3 mb-3">
                <label for="validationDefault04">Страна</label>
                <select class="custom-select" id="validationDefault04">
                    <option selected disabled value="">Choose...</option>
                    <option>...</option>
                </select>
            </div>


        </div>
        <div class="form-group">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck3" aria-describedby="invalidCheck3Feedback" required>
                <label class="form-check-label" for="invalidCheck3">
                    Agree to terms and conditions
                </label>
                <div  id="invalidCheck3Feedback" class="invalid-feedback">
                    You must agree before submitting.
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Логин</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Пароль</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="password">
        </div>
        <button class="btn btn-primary" type="submit">Зарегистироваться</button>
    </form>

</@c.page>