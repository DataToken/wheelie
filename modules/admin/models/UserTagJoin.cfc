component extends="models.Model"{
		function init() {
			super.init();

			// Set
			table("users_categories");

			// Relations
			belongsTo(name="User", foreignKey="userid");
			belongsTo(name="UserTag", foreignKey="categoryid");
		}
}
