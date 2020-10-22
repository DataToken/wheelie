component extends="models.Model"
	{
		function init() {
			super.init();
			beforeSave("handleSubdomain");
		}
		private function handleSubdomain() {
			if(!isNull(this.subdomain)) {
				var removeThese = ["www.",".","http://","https://","https","http",".com",":","/"];
				for(var removeThis in removeThese) this.subdomain = replaceNoCase(this.subdomain,removeThis,"");
				this.subdomain = lcase(cleanUrlId(this.subdomain));
				this.subdomain = makeSubdomainUnique(this.subdomain);
			}
		}
	}