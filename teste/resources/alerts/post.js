var helpers = requireModule("helpers");
var alertsBusiness = requireModule("alerts-business");
var _alert = this;

try {
    cancelUnless(me || internal, "Você não está logado", 401);
    if (!internal) {
        alertsBusiness.canPost(ctx, bbc, me, _alert, function (canPost) {
            cancelIf(!canPost, "Usuário não autorizado");
            if (canPost) {
                alertsBusiness.onPost(ctx, bbc, me, _alert);
            }
        });
    } else {
        alertsBusiness.onPost(ctx, bbc, me, _alert);
    }
} catch (error) {
    helpers.notifyException("alerts -> onPost -> Erro desconhecido ->");
    helpers.notifyException(error);
}
