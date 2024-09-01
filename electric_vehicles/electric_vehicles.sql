CREATE DATABASE IF NOT EXISTS electric_vehicles;
USE electric_vehicles;

CREATE TABLE IF NOT EXISTS vehicle (
	VehicleID INT NOT NULL AUTO_INCREMENT,
	Modell VARCHAR
	ChargingRate DOUBLE,
	TotalRange VARCHAR,
	BatteryRange VARCHAR,
	Acceleration VARCHAR,
	MaxSpeed DOUBLE,
	CompanyID INT NOT NULL,
	VehicleTypeID INT NOT NULL,
	BrandID INT NOT NULL,
	TypID INT NOT NULL,
	PRIMARY KEY (VehicleID),
	CONSTRAINT C_CompanyID FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
	CONSTRAINT C_VehicleTypeID FOREIGN KEY (VehicleTypeID) REFERENCES VehicleType(VehicleTypeID)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
	CONSTRAINT C_BrandID FOREIGN KEY (BrandID) REFERENCES Brand(BrandID)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
	CONSTRAINT C_TypID FOREIGN KEY (TypeID) REFERENCES Typ(TypeID)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
); ENGINE=InnoDB AUTO_INCREMENT=999 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;