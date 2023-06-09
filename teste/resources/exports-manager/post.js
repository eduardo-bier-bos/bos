try {
    var helpers = requireModule("helpers");
    var exportsManagerBusiness = requireModule("exports-manager-business");
    var exportManager = this;
    cancelUnless(internal, "Usuário não autorizado!", 401);
    exportsManagerBusiness.prepareObjectToPost(ctx, bbc, me, exportManager, function (objectItemToPost) {
        exportsManagerBusiness.onPost(ctx, bbc, me, objectItemToPost);
    });
} catch (error) {
    helpers.notifyException("exports-manager -> onPost -> erro desconhecido ->");
    helpers.notifyException(error);
    cancel();
}
