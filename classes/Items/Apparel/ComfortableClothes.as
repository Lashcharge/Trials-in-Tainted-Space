package classes.Items.Apparel 
{
	import classes.ItemSlotClass;
	import classes.GLOBAL;
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class ComfortableClothes extends ItemSlotClass
	{
		
		public function ComfortableClothes() 
		{
			this._latestVersion = 1;

			this.quantity = 1;
			this.stackSize = 1;
			this.type = GLOBAL.ARMOR;
			
			//Used on inventory buttons
			this.shortName = "C.Clothes";
			
			//Regular name
			this.longName = "comfortable clothes";
			
			//Longass shit, not sure what used for yet.
			this.description = "a fairly generic set of comfortable clothes";
			
			//Displayed on tooltips during mouseovers
			this.tooltip = "This is a fairly generic and indistinguishable set of clothes. They look rather comfortable.";
			
			this.attackVerb = "null";
			
			//Information
			this.basePrice = 200;
			this.attack = 0;
			this.damage = 0;
			this.damageType = GLOBAL.PIERCING;
			this.defense = 0;
			this.shieldDefense = 0;
			this.shields = 0;
			this.sexiness = 0;
			this.critBonus = 0;
			this.evasion = 0;
			this.fortification = 0;
			this.bonusResistances = new Array(0, 0, 0, 0, 0, 0, 0, 0);
			
			this.version = _latestVersion;
		}
		
	}

}