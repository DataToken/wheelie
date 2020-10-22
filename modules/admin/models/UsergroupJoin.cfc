component extends="models.Model"{
		function init() {
			super.init();

			// Set
			table("users_usergroups");

			// Relations
			belongsTo(name="User", foreignKey="userid");
			belongsTo(name="UserGroup", foreignKey="usergroupid");

		}
}