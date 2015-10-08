<div class="btn-breadcrumb">
    <a href="#/"><i class="fa-home"></i><span class="sr-only">{{t 'home'}}</span></a>
    <a href="#/backup">{{t 'backup'}}</a>
    <a href="#/backup/{{storage.id}}">{{storage.name}}</a>
    <a href="#/backup/{{storage.id}}/create">{{t 'backup_create'}}</a>
</div>

<div class="separator"></div>

<form action="#/backup/{{storage.id}}" method="POST" class="form-horizontal">
    <div class="list-group">
        {{#each hooks}}
            <div class="list-group-item">
                <input type="checkbox" id="{{@key}}" name="hooks" value="{{value}}" checked class="nice-checkbox">
                <label for="{{@key}}" class="pull-right"><span class="sr-only">{{t 'check'}}</span></label>
                <h2 class="list-group-item-heading">{{name}}</h2>
                <p class="list-group-item-text">{{description}}</p>
            </div>
        {{/each}}
        {{#each apps}}
            <div class="list-group-item">
                <input type="checkbox" id="{{id}}" name="apps" value="{{id}}" checked class="nice-checkbox">
                <label for="{{id}}" class="pull-right"><span class="sr-only">{{t 'check'}}</span></label>
                <h2 class="list-group-item-heading">{{name}} <small>{{id}}</small></h2>
            </div>
        {{/each}}
    </div>
    <div class="separator"></div>

    <!--<div class="panel panel-default">
        <div class="panel-heading">
            <h2 class="panel-title"><span class="fa-fw fa-lock"></span> {{t 'backup_optional_encryption'}}</h2>
        </div>
        <div class="panel-body">
            <div class="form-group has-feedback">
                <label for="label" class="col-sm-12">{{t 'password'}}</label>
                    <div class="col-sm-12">
                        <input type="password" id="password" name="password" class="form-control" placeholder="{{t 'backup_optional_password'}}">
                        <p class="text-warning">
                            {{t 'backup_encryption_warning'}}
                        </p>
                    </div>
                </label>
            </div>
        </div>
    </div>
    <div class="separator"></div>-->
    <span class="pull-right">
        <input type="submit" class="btn btn-success slide back" value="{{t 'backup_action'}}" />
    </span>
</form>