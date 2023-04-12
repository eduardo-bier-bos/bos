let helpers = requireModule('helpers');

try {
	let supportPrioritiesBusiness = requireModule('support-priorities-business');
	let supportPriority = this;

	cancelUnless(me || internal, 'Usuário não autorizado!', 401);
	supportPrioritiesBusiness.canDelete(ctx, dpd, me, supportPriority, function (canDelete, message) {
		if (canDelete) {
			supportPrioritiesBusiness.onDelete(ctx, dpd, me, supportPriority);
		} else {
			cancel(message);
		}
	});
} catch (error) {
	helpers.notifyException('support-priorities -> onDelete -> erro desconhecido ->');
	helpers.notifyException(error);
	cancel();
}
