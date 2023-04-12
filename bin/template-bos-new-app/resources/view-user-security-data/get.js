let helpers = requireModule('helpers');
let auditBusiness = requireModule('audit-business');
let viewData = {};

try {
	helpers.helperServer.showLog('BierOnStack: Recurso ViewUserSecurityData :: Evento :: get :: Ação :: Begin');
	if (!internal) {
		auditBusiness.logAction(dpd, helpers.helperServer.both.actions.tryGet, ctx.body, 'ViewUserSecurityData', ' *** Agent: ' + ctx.req.headers['user-agent'], ctx.req.headers['x-real-ip']);
		setResult('Acesso negado, registrando tentativa de acesso indevido');
	} else {
		$addCallback();
		dpd.usergroupusers.get({ userId: me.id }, function (userGroups) {
			dpd.usergroupdimensions.get(
				{
					userGroupId: {
						$in: userGroups.map((userGroup) => userGroup.userGroupId)
					}
				},
				function (userDimensions) {
					dpd.dimensions.get(
						{
							id: {
								$in: userDimensions.map((userDimension) => userDimension.dimensionId)
							}
						},
						function (dimensions) {
							me.dimensions = dimensions;
							viewData.data = me;
							setResult(viewData);
							$finishCallback();
						}
					);
				}
			);
		});
	}
} catch (error) {
	helpers.helperServer.showException(helpers.helperServer.both.formatString('BierOnStack: Recurso ViewUserSecurityData :: Evento :: get :: Exceção :: {0}', error.message));
}
