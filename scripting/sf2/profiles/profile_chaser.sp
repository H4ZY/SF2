#if defined _sf2_profiles_chaser
 #endinput
#endif

#define _sf2_profiles_chaser

#define SF2_CHASER_BOSS_MAX_ATTACKS 16

Handle g_hChaserProfileNames;
Handle g_hChaserProfileData;

enum
{
	SF2BossAttackType_Invalid = -1,
	SF2BossAttackType_Melee = 0,
	SF2BossAttackType_Ranged = 1,
	SF2BossAttackType_Projectile = 2,
	SF2BossAttackType_ExplosiveDance = 3,
	SF2BossAttackType_Unused,
	SF2BossAttackType_Custom
};

enum
{
	SF2BossProjectileType_Invalid = -1,
	SF2BossProjectileType_Fireball = 0,
	SF2BossProjectileType_Iceball = 1,
	SF2BossProjectileType_Rocket = 2,
	SF2BossProjectileType_Grenade = 3,
	SF2BossProjectileType_SentryRocket = 4,
	SF2BossProjectileType_Arrow = 5,
	SF2BossProjectileType_Mangler = 6,
	SF2BossProjectileType_Baseball = 7,
	SF2BossProjectileType_Unused,
	SF2BossProjectileType_Custom
};

enum
{
	SF2BossTrapType_Invalid = -1,
	SF2BossTrapType_BearTrap = 0,
	SF2BossTrapType_Unused,
	SF2BossTrapType_Custom
};

enum
{
	ChaserProfileData_StepSize,
	ChaserProfileData_WalkSpeedEasy,
	ChaserProfileData_WalkSpeedNormal,
	ChaserProfileData_WalkSpeedHard,
	ChaserProfileData_WalkSpeedInsane,
	ChaserProfileData_WalkSpeedNightmare,
	ChaserProfileData_WalkSpeedApollyon,
	
	ChaserProfileData_AirSpeedEasy,
	ChaserProfileData_AirSpeedNormal,
	ChaserProfileData_AirSpeedHard,
	ChaserProfileData_AirSpeedInsane,
	ChaserProfileData_AirSpeedNightmare,
	ChaserProfileData_AirSpeedApollyon,
	
	ChaserProfileData_MaxWalkSpeedEasy,
	ChaserProfileData_MaxWalkSpeedNormal,
	ChaserProfileData_MaxWalkSpeedHard,
	ChaserProfileData_MaxWalkSpeedInsane,
	ChaserProfileData_MaxWalkSpeedNightmare,
	ChaserProfileData_MaxWalkSpeedApollyon,
	
	ChaserProfileData_MaxAirSpeedEasy,
	ChaserProfileData_MaxAirSpeedNormal,
	ChaserProfileData_MaxAirSpeedHard,
	ChaserProfileData_MaxAirSpeedInsane,
	ChaserProfileData_MaxAirSpeedNightmare,
	ChaserProfileData_MaxAirSpeedApollyon,
	
	ChaserProfileData_WakeRadius,
	
	ChaserProfileData_Attacks,		// array that contains data about attacks
	
	ChaserProfileData_SearchAlertDuration,
	ChaserProfileData_SearchAlertDurationEasy,
	ChaserProfileData_SearchAlertDurationHard,
	ChaserProfileData_SearchAlertDurationInsane,
	ChaserProfileData_SearchAlertDurationNightmare,
	ChaserProfileData_SearchAlertDurationApollyon,

	ChaserProfileData_SearchAlertGracetime,
	ChaserProfileData_SearchAlertGracetimeEasy,
	ChaserProfileData_SearchAlertGracetimeHard,
	ChaserProfileData_SearchAlertGracetimeInsane,
	ChaserProfileData_SearchAlertGracetimeNightmare,
	ChaserProfileData_SearchAlertGracetimeApollyon,
	
	ChaserProfileData_SearchChaseDuration,
	ChaserProfileData_SearchChaseDurationEasy,
	ChaserProfileData_SearchChaseDurationHard,
	ChaserProfileData_SearchChaseDurationInsane,
	ChaserProfileData_SearchChaseDurationNightmare,
	ChaserProfileData_SearchChaseDurationApollyon,
	
	ChaserProfileData_CanBeStunned,
	ChaserProfileData_StunDuration,
	ChaserProfileData_StunCooldown,
	ChaserProfileData_StunHealth,
	ChaserProfileData_StunHealthPerPlayer,
	ChaserProfileData_CanBeStunnedByFlashlight,
	ChaserProfileData_StunFlashlightDamage,
	
	ChaserProfileData_KeyDrop,
	
	ChaserProfileData_MemoryLifeTime,
	
	ChaserProfileData_AwarenessIncreaseRateEasy,
	ChaserProfileData_AwarenessIncreaseRateNormal,
	ChaserProfileData_AwarenessIncreaseRateHard,
	ChaserProfileData_AwarenessIncreaseRateInsane,
	ChaserProfileData_AwarenessIncreaseRateNightmare,
	ChaserProfileData_AwarenessIncreaseRateApollyon,
	
	ChaserProfileData_AwarenessDecreaseRateEasy,
	ChaserProfileData_AwarenessDecreaseRateNormal,
	ChaserProfileData_AwarenessDecreaseRateHard,
	ChaserProfileData_AwarenessDecreaseRateInsane,
	ChaserProfileData_AwarenessDecreaseRateNightmare,
	ChaserProfileData_AwarenessDecreaseRateApollyon,
	
	ChaserProfileData_CanCloak,
	ChaserProfileData_CloakCooldownEasy,
	ChaserProfileData_CloakCooldownNormal,
	ChaserProfileData_CloakCooldownHard,
	ChaserProfileData_CloakCooldownInsane,
	ChaserProfileData_CloakCooldownNightmare,
	ChaserProfileData_CloakCooldownApollyon,
	
	ChaserProfileData_CloakRangeEasy,
	ChaserProfileData_CloakRangeNormal,
	ChaserProfileData_CloakRangeHard,
	ChaserProfileData_CloakRangeInsane,
	ChaserProfileData_CloakRangeNightmare,
	ChaserProfileData_CloakRangeApollyon,
	
	ChaserProfileData_ProjectileEnable,
	ChaserProfileData_ProjectileCooldownMinEasy,
	ChaserProfileData_ProjectileCooldownMinNormal,
	ChaserProfileData_ProjectileCooldownMinHard,
	ChaserProfileData_ProjectileCooldownMinInsane,
	ChaserProfileData_ProjectileCooldownMinNightmare,
	ChaserProfileData_ProjectileCooldownMinApollyon,
	
	ChaserProfileData_ProjectileCooldownMaxEasy,
	ChaserProfileData_ProjectileCooldownMaxNormal,
	ChaserProfileData_ProjectileCooldownMaxHard,
	ChaserProfileData_ProjectileCooldownMaxInsane,
	ChaserProfileData_ProjectileCooldownMaxNightmare,
	ChaserProfileData_ProjectileCooldownMaxApollyon,
	
	ChaserProfileData_ProjectileSpeedEasy,
	ChaserProfileData_ProjectileSpeedNormal,
	ChaserProfileData_ProjectileSpeedHard,
	ChaserProfileData_ProjectileSpeedInsane,
	ChaserProfileData_ProjectileSpeedNightmare,
	ChaserProfileData_ProjectileSpeedApollyon,
	
	ChaserProfileData_ProjectileDamageEasy,
	ChaserProfileData_ProjectileDamageNormal,
	ChaserProfileData_ProjectileDamageHard,
	ChaserProfileData_ProjectileDamageInsane,
	ChaserProfileData_ProjectileDamageNightmare,
	ChaserProfileData_ProjectileDamageApollyon,
	
	ChaserProfileData_ProjectileRadiusEasy,
	ChaserProfileData_ProjectileRadiusNormal,
	ChaserProfileData_ProjectileRadiusHard,
	ChaserProfileData_ProjectileRadiusInsane,
	ChaserProfileData_ProjectileRadiusNightmare,
	ChaserProfileData_ProjectileRadiusApollyon,
	
	ChaserProfileData_ProjectileType,
	ChaserProfileData_CriticlaRockets,
	ChaserProfileData_UseShootGesture,
	ChaserProfileData_ProjectileClipEnable,
	ChaserProfileData_ProjectileClipEasy,
	ChaserProfileData_ProjectileClipNormal,
	ChaserProfileData_ProjectileClipHard,
	ChaserProfileData_ProjectileClipInsane,
	ChaserProfileData_ProjectileClipNightmare,
	ChaserProfileData_ProjectileClipApollyon,
	
	ChaserProfileData_ProjectileReloadTimeEasy,
	ChaserProfileData_ProjectileReloadTimeNormal,
	ChaserProfileData_ProjectileReloadTimeHard,
	ChaserProfileData_ProjectileReloadTimeInsane,
	ChaserProfileData_ProjectileReloadTimeNightmare,
	ChaserProfileData_ProjectileReloadTimeApollyon,
	
	ChaserProfileData_UseChargeUpProjectiles,
	ChaserProfileData_ProjectileChargeUpEasy,
	ChaserProfileData_ProjectileChargeUpNormal,
	ChaserProfileData_ProjectileChargeUpHard,
	ChaserProfileData_ProjectileChargeUpInsane,
	ChaserProfileData_ProjectileChargeUpNightmare,
	ChaserProfileData_ProjectileChargeUpApollyon,
	
	ChaserProfileData_IceballSlowdownDurationEasy,
	ChaserProfileData_IceballSlowdownDurationNormal,
	ChaserProfileData_IceballSlowdownDurationHard,
	ChaserProfileData_IceballSlowdownDurationInsane,
	ChaserProfileData_IceballSlowdownDurationNightmare,
	ChaserProfileData_IceballSlowdownDurationApollyon,
	
	ChaserProfileData_IceballSlowdownPercentEasy,
	ChaserProfileData_IceballSlowdownPercentNormal,
	ChaserProfileData_IceballSlowdownPercentHard,
	ChaserProfileData_IceballSlowdownPercentInsane,
	ChaserProfileData_IceballSlowdownPercentNightmare,
	ChaserProfileData_IceballSlowdownPercentApollyon,
	
	ChaserProfileData_AdvancedDamageEffectsEnabled,
	ChaserProfileData_AdvancedDamageEffectsParticles,
	
	ChaserProfileData_EnableJarateAdvanced,
	ChaserProfileData_JarateAdvancedIndexes,
	ChaserProfileData_JarateAdvancedDurationEasy,
	ChaserProfileData_JarateAdvancedDurationNormal,
	ChaserProfileData_JarateAdvancedDurationHard,
	ChaserProfileData_JarateAdvancedDurationInsane,
	ChaserProfileData_JarateAdvancedDurationNightmare,
	ChaserProfileData_JarateAdvancedDurationApollyon,
	
	ChaserProfileData_EnableMilkAdvanced,
	ChaserProfileData_MilkAdvancedIndexes,
	ChaserProfileData_MilkAdvancedDurationEasy,
	ChaserProfileData_MilkAdvancedDurationNormal,
	ChaserProfileData_MilkAdvancedDurationHard,
	ChaserProfileData_MilkAdvancedDurationInsane,
	ChaserProfileData_MilkAdvancedDurationNightmare,
	ChaserProfileData_MilkAdvancedDurationApollyon,
	
	ChaserProfileData_EnableGasAdvanced,
	ChaserProfileData_GasAdvancedIndexes,
	ChaserProfileData_GasAdvancedDurationEasy,
	ChaserProfileData_GasAdvancedDurationNormal,
	ChaserProfileData_GasAdvancedDurationHard,
	ChaserProfileData_GasAdvancedDurationInsane,
	ChaserProfileData_GasAdvancedDurationNightmare,
	ChaserProfileData_GasAdvancedDurationApollyon,
	
	ChaserProfileData_EnableMarkAdvanced,
	ChaserProfileData_MarkAdvancedIndexes,
	ChaserProfileData_MarkAdvancedDurationEasy,
	ChaserProfileData_MarkAdvancedDurationNormal,
	ChaserProfileData_MarkAdvancedDurationHard,
	ChaserProfileData_MarkAdvancedDurationInsane,
	ChaserProfileData_MarkAdvancedDurationNightmare,
	ChaserProfileData_MarkAdvancedDurationApollyon,
	
	ChaserProfileData_EnableIgniteAdvanced,
	ChaserProfileData_IgniteAdvancedIndexes,
	ChaserProfileData_IgniteAdvancedDelayEasy,
	ChaserProfileData_IgniteAdvancedDelayNormal,
	ChaserProfileData_IgniteAdvancedDelayHard,
	ChaserProfileData_IgniteAdvancedDelayInsane,
	ChaserProfileData_IgniteAdvancedDelayNightmare,
	ChaserProfileData_IgniteAdvancedDelayApollyon,
	
	ChaserProfileData_EnableStunAdvanced,
	ChaserProfileData_StunAdvancedIndexes,
	ChaserProfileData_StunAdvancedDurationEasy,
	ChaserProfileData_StunAdvancedDurationNormal,
	ChaserProfileData_StunAdvancedDurationHard,
	ChaserProfileData_StunAdvancedDurationInsane,
	ChaserProfileData_StunAdvancedDurationNightmare,
	ChaserProfileData_StunAdvancedDurationApollyon,
	ChaserProfileData_StunAdvancedSlowdownEasy,
	ChaserProfileData_StunAdvancedSlowdownNormal,
	ChaserProfileData_StunAdvancedSlowdownHard,
	ChaserProfileData_StunAdvancedSlowdownInsane,
	ChaserProfileData_StunAdvancedSlowdownNightmare,
	ChaserProfileData_StunAdvancedSlowdownApollyon,
	ChaserProfileData_StunAdvancedType,
	
	ChaserProfileData_EnableBleedAdvanced,
	ChaserProfileData_BleedAdvancedIndexes,
	ChaserProfileData_BleedAdvancedDurationEasy,
	ChaserProfileData_BleedAdvancedDurationNormal,
	ChaserProfileData_BleedAdvancedDurationHard,
	ChaserProfileData_BleedAdvancedDurationInsane,
	ChaserProfileData_BleedAdvancedDurationNightmare,
	ChaserProfileData_BleedAdvancedDurationApollyon,
	
	ChaserProfileData_EnableEletricAdvanced,
	ChaserProfileData_EletricAdvancedIndexes,
	ChaserProfileData_EletricAdvancedDurationEasy,
	ChaserProfileData_EletricAdvancedDurationNormal,
	ChaserProfileData_EletricAdvancedDurationHard,
	ChaserProfileData_EletricAdvancedDurationInsane,
	ChaserProfileData_EletricAdvancedDurationNightmare,
	ChaserProfileData_EletricAdvancedDurationApollyon,
	ChaserProfileData_EletricAdvancedSlowdownEasy,
	ChaserProfileData_EletricAdvancedSlowdownNormal,
	ChaserProfileData_EletricAdvancedSlowdownHard,
	ChaserProfileData_EletricAdvancedSlowdownInsane,
	ChaserProfileData_EletricAdvancedSlowdownNightmare,
	ChaserProfileData_EletricAdvancedSlowdownApollyon,
	ChaserProfileData_EletricAdvancedType,
	
	ChaserProfileData_EnableSmiteAdvanced,
	ChaserProfileData_SmiteAdvancedIndexes,
	ChaserProfileData_SmiteAdvancedDamage,
	ChaserProfileData_SmiteAdvancedDamageType,
	ChaserProfileData_SmiteColorR,
	ChaserProfileData_SmiteColorG,
	ChaserProfileData_SmiteColorB,
	ChaserProfileData_SmiteTransparency,
	
	ChaserProfileData_ShockwavesEnable,
	ChaserProfileData_ShockwaveHeightEasy,
	ChaserProfileData_ShockwaveHeightNormal,
	ChaserProfileData_ShockwaveHeightHard,
	ChaserProfileData_ShockwaveHeightInsane,
	ChaserProfileData_ShockwaveHeightNightmare,
	ChaserProfileData_ShockwaveRangeEasy,
	ChaserProfileData_ShockwaveRangeNormal,
	ChaserProfileData_ShockwaveRangeHard,
	ChaserProfileData_ShockwaveRangeInsane,
	ChaserProfileData_ShockwaveRangeNightmare,
	ChaserProfileData_ShockwaveDrainEasy,
	ChaserProfileData_ShockwaveDrainNormal,
	ChaserProfileData_ShockwaveDrainHard,
	ChaserProfileData_ShockwaveDrainInsane,
	ChaserProfileData_ShockwaveDrainNightmare,
	ChaserProfileData_ShockwaveForceEasy,
	ChaserProfileData_ShockwaveForceNormal,
	ChaserProfileData_ShockwaveForceHard,
	ChaserProfileData_ShockwaveForceInsane,
	ChaserProfileData_ShockwaveForceNightmare,
	ChaserProfileData_ShockwaveStunEnabled,
	ChaserProfileData_ShockwaveStunDurationEasy,
	ChaserProfileData_ShockwaveStunDurationNormal,
	ChaserProfileData_ShockwaveStunDurationHard,
	ChaserProfileData_ShockwaveStunDurationInsane,
	ChaserProfileData_ShockwaveStunDurationNightmare,
	ChaserProfileData_ShockwaveStunSlowdownEasy,
	ChaserProfileData_ShockwaveStunSlowdownNormal,
	ChaserProfileData_ShockwaveStunSlowdownHard,
	ChaserProfileData_ShockwaveStunSlowdownInsane,
	ChaserProfileData_ShockwaveStunSlowdownNightmare,
	ChaserProfileData_ShockwaveAttackIndexes,
	
	ChaserProfileData_TrapsEnabled,
	ChaserProfileData_TrapType,
	ChaserProfileData_TrapSpawnCooldownEasy,
	ChaserProfileData_TrapSpawnCooldownNormal,
	ChaserProfileData_TrapSpawnCooldownHard,
	ChaserProfileData_TrapSpawnCooldownInsane,
	ChaserProfileData_TrapSpawnCooldownNightmare,
	ChaserProfileData_TrapSpawnCooldownApollyon,
	
	ChaserProfileData_EnableDamageParticles,
	ChaserProfileData_DamageParticleVolume,
	ChaserProfileData_DamageParticlePitch,

	ChaserProfileData_MaxStats
};

enum
{
	ChaserProfileAttackData_Type = 0,
	ChaserProfileAttackData_CanUseAgainstProps,
	ChaserProfileAttackData_Damage,
	ChaserProfileAttackData_DamageVsProps,
	ChaserProfileAttackData_DamageForce,
	ChaserProfileAttackData_DamageType,
	ChaserProfileAttackData_DamageDelay,
	ChaserProfileAttackData_Range,
	ChaserProfileAttackData_Duration,
	ChaserProfileAttackData_Spread,
	ChaserProfileAttackData_BeginRange,
	ChaserProfileAttackData_BeginFOV,
	ChaserProfileAttackData_Cooldown,
	ChaserProfileAttackData_Disappear,
	ChaserProfileAttackData_Repeat,
	ChaserProfileAttackData_WeaponInt,
	ChaserProfileAttackData_WeaponString,
	ChaserProfileAttackData_CanUseWeaponTypes,
	ChaserProfileAttackData_LifeStealEnabled,
	ChaserProfileAttackData_LifeStealDuration,
	ChaserProfileAttackData_ProjectileDamage,
	ChaserProfileAttackData_ProjectileSpeed,
	ChaserProfileAttackData_ProjectileRadius,
	ChaserProfileAttackData_ProjectileCrits,
	ChaserProfileAttackData_BulletCount,
	ChaserProfileAttackData_BulletDamage,
	ChaserProfileAttackData_BulletSpread,
	ChaserProfileAttackData_MaxStats
};

enum 
{
	ChaserAnimationType_Idle = 0,
	ChaserAnimationType_IdlePlaybackRate,
	ChaserAnimationType_Walk = 0,
	ChaserAnimationType_WalkPlaybackRate,
	ChaserAnimationType_Run = 0,
	ChaserAnimationType_RunPlaybackRate,
	ChaserAnimationType_Attack = 0,
	ChaserAnimationType_AttackPlaybackRate,
	ChaserAnimationType_Stunned = 0,
	ChaserAnimationType_StunnedPlaybackRate,
	ChaserAnimationType_Death = 0,
	ChaserAnimationType_DeathPlaybackRate
};

enum
{
	ChaserAnimation_IdleAnimations = 0, //Array that contains all the idle animations
	ChaserAnimation_WalkAnimations, //Array that contains all the walk animations
	ChaserAnimation_WalkAlertAnimations, //Array that contains all the alert walk animations
	ChaserAnimation_AttackAnimations, //Array that contains all the attack animations (working on attack index)
	ChaserAnimation_ShootAnimations, //Array that contains all the attack animations after we shoot something
	ChaserAnimation_RunAnimations, //Array that contains all the run animations
	ChaserAnimation_StunAnimations, //Array that contains all the stun animations
	ChaserAnimation_ChaseInitialAnimations, //Array that contains all the chase initial animations
	ChaserAnimation_RageAnimations, //Array that contains all the rage animations, used for Boxing Maps
	ChaserAnimation_DeathAnimations, //Array that contains all the death animations
	ChaserAnimation_JumpAnimations, //Array that contains all the jump animations
	ChaserAnimation_MaxAnimations
};

void InitializeChaserProfiles()
{
	g_hChaserProfileNames = CreateTrie();
	g_hChaserProfileData = CreateArray(ChaserProfileData_MaxStats);
}

/**
 *	Clears all data and memory currently in use by chaser profiles.
 */
void ClearChaserProfiles()
{
	for (int i = 0, iSize = GetArraySize(g_hChaserProfileData); i < iSize; i++)
	{
		Handle hHandle = view_as<Handle>(GetArrayCell(g_hChaserProfileData, i, ChaserProfileData_Attacks));
		if (hHandle != INVALID_HANDLE)
		{
			delete hHandle;
		}
	}
	
	ClearTrie(g_hChaserProfileNames);
	ClearArray(g_hChaserProfileData);
}

/**
 *	Parses and stores the unique values of a chaser profile from the current position in the profiles config.
 *	Returns true if loading was successful, false if not.
 */
bool LoadChaserBossProfile(Handle kv, const char[] sProfile,int &iUniqueProfileIndex, char[] sLoadFailReasonBuffer,int iLoadFailReasonBufferLen)
{
	strcopy(sLoadFailReasonBuffer, iLoadFailReasonBufferLen, "");
	
	iUniqueProfileIndex = PushArrayCell(g_hChaserProfileData, -1);
	SetTrieValue(g_hChaserProfileNames, sProfile, iUniqueProfileIndex);
	
	float flBossStepSize = KvGetFloat(kv, "stepsize", 18.0);
	
	float flBossDefaultWalkSpeed = KvGetFloat(kv, "walkspeed", 30.0);
	float flBossWalkSpeedEasy = KvGetFloat(kv, "walkspeed_easy", flBossDefaultWalkSpeed);
	float flBossWalkSpeedHard = KvGetFloat(kv, "walkspeed_hard", flBossDefaultWalkSpeed);
	float flBossWalkSpeedInsane = KvGetFloat(kv, "walkspeed_insane", flBossWalkSpeedHard);
	float flBossWalkSpeedNightmare = KvGetFloat(kv, "walkspeed_nightmare", flBossWalkSpeedInsane);
	float flBossWalkSpeedApollyon = KvGetFloat(kv, "walkspeed_apollyon", flBossWalkSpeedNightmare);
	
	float flBossDefaultAirSpeed = KvGetFloat(kv, "airspeed", 50.0);
	float flBossAirSpeedEasy = KvGetFloat(kv, "airspeed_easy", flBossDefaultAirSpeed);
	float flBossAirSpeedHard = KvGetFloat(kv, "airspeed_hard", flBossDefaultAirSpeed);
	float flBossAirSpeedInsane = KvGetFloat(kv, "airspeed_insane", flBossAirSpeedHard);
	float flBossAirSpeedNightmare = KvGetFloat(kv, "airspeed_nightmare", flBossAirSpeedInsane);
	float flBossAirSpeedApollyon = KvGetFloat(kv, "airspeed_apollyon", flBossAirSpeedNightmare);
	
	float flBossDefaultMaxWalkSpeed = KvGetFloat(kv, "walkspeed_max", 30.0);
	float flBossMaxWalkSpeedEasy = KvGetFloat(kv, "walkspeed_max_easy", flBossDefaultMaxWalkSpeed);
	float flBossMaxWalkSpeedHard = KvGetFloat(kv, "walkspeed_max_hard", flBossDefaultMaxWalkSpeed);
	float flBossMaxWalkSpeedInsane = KvGetFloat(kv, "walkspeed_max_insane", flBossMaxWalkSpeedHard);
	float flBossMaxWalkSpeedNightmare = KvGetFloat(kv, "walkspeed_max_nightmare", flBossMaxWalkSpeedInsane);
	float flBossMaxWalkSpeedApollyon = KvGetFloat(kv, "walkspeed_max_apollyon", flBossMaxWalkSpeedNightmare);
	
	float flBossDefaultMaxAirSpeed = KvGetFloat(kv, "airspeed_max", 50.0);
	float flBossMaxAirSpeedEasy = KvGetFloat(kv, "airspeed_max_easy", flBossDefaultMaxAirSpeed);
	float flBossMaxAirSpeedHard = KvGetFloat(kv, "airspeed_max_hard", flBossDefaultMaxAirSpeed);
	float flBossMaxAirSpeedInsane = KvGetFloat(kv, "airspeed_max_insane", flBossMaxAirSpeedHard);
	float flBossMaxAirSpeedNightmare = KvGetFloat(kv, "airspeed_max_nightmare", flBossMaxAirSpeedInsane);
	float flBossMaxAirSpeedApollyon = KvGetFloat(kv, "airspeed_max_apollyon", flBossMaxAirSpeedNightmare);
	
	float flWakeRange = KvGetFloat(kv, "wake_radius");
	if (flWakeRange < 0.0) flWakeRange = 0.0;
	
	float flAlertGracetime = KvGetFloat(kv, "search_alert_gracetime", 0.5);
	float flAlertGracetimeEasy = KvGetFloat(kv, "search_alert_gracetime_easy", flAlertGracetime);
	float flAlertGracetimeHard = KvGetFloat(kv, "search_alert_gracetime_hard", flAlertGracetime);
	float flAlertGracetimeInsane = KvGetFloat(kv, "search_alert_gracetime_insane", flAlertGracetimeHard);
	float flAlertGracetimeNightmare = KvGetFloat(kv, "search_alert_gracetime_nightmare", flAlertGracetimeInsane);
	float flAlertGracetimeApollyon = KvGetFloat(kv, "search_alert_gracetime_apollyon", flAlertGracetimeNightmare);
	
	float flAlertDuration = KvGetFloat(kv, "search_alert_duration", 5.0);
	float flAlertDurationEasy = KvGetFloat(kv, "search_alert_duration_easy", flAlertDuration);
	float flAlertDurationHard = KvGetFloat(kv, "search_alert_duration_hard", flAlertDuration);
	float flAlertDurationInsane = KvGetFloat(kv, "search_alert_duration_insane", flAlertDurationHard);
	float flAlertDurationNightmare = KvGetFloat(kv, "search_alert_duration_nightmare", flAlertDurationInsane);
	float flAlertDurationApollyon = KvGetFloat(kv, "search_alert_duration_apollyon", flAlertDurationNightmare);
	
	float flChaseDuration = KvGetFloat(kv, "search_chase_duration", 10.0);
	float flChaseDurationEasy = KvGetFloat(kv, "search_chase_duration_easy", flChaseDuration);
	float flChaseDurationHard = KvGetFloat(kv, "search_chase_duration_hard", flChaseDuration);
	float flChaseDurationInsane = KvGetFloat(kv, "search_chase_duration_insane", flChaseDurationHard);
	float flChaseDurationNightmare = KvGetFloat(kv, "search_chase_duration_nightmare", flChaseDurationInsane);
	float flChaseDurationApollyon = KvGetFloat(kv, "search_chase_duration_apollyon", flChaseDurationNightmare);
	
	bool bCanBeStunned = view_as<bool>(KvGetNum(kv, "stun_enabled"));
	
	float flStunDuration = KvGetFloat(kv, "stun_duration");
	if (flStunDuration < 0.0) flStunDuration = 0.0;
	
	float flStunCooldown = KvGetFloat(kv, "stun_cooldown", 3.5);
	if (flStunCooldown < 0.0) flStunCooldown = 0.0;
	
	float flStunHealth = KvGetFloat(kv, "stun_health");
	if (flStunHealth < 0.0) flStunHealth = 0.0;
	float flStunHealthPerPlayer = KvGetFloat(kv, "stun_health_per_player");
	if (flStunHealthPerPlayer < 0.0) flStunHealthPerPlayer = 0.0;
	
	bool bStunTakeDamageFromFlashlight = view_as<bool>(KvGetNum(kv, "stun_damage_flashlight_enabled"));
	
	float flStunFlashlightDamage = KvGetFloat(kv, "stun_damage_flashlight");
	
	bool bKeyDrop = view_as<bool>(KvGetNum(kv, "keydrop_enabled"));
	
	bool bCanCloak = view_as<bool>(KvGetNum(kv, "cloak_enable"));
	
	float flBossDefaultCloakCooldown = KvGetFloat(kv, "cloak_cooldown", 8.0);
	float flBossCloakCooldownEasy = KvGetFloat(kv, "cloak_cooldown_easy", flBossDefaultCloakCooldown);
	float flBossCloakCooldownHard = KvGetFloat(kv, "cloak_cooldown_hard", flBossDefaultCloakCooldown);
	float flBossCloakCooldownInsane = KvGetFloat(kv, "cloak_cooldown_insane", flBossCloakCooldownHard);
	float flBossCloakCooldownNightmare = KvGetFloat(kv, "cloak_cooldown_nightmare", flBossCloakCooldownInsane);
	float flBossCloakCooldownApollyon = KvGetFloat(kv, "cloak_cooldown_apollyon", flBossCloakCooldownNightmare);
	
	float flBossDefaultCloakRange = KvGetFloat(kv, "cloak_range", 250.0);
	float flBossCloakRangeEasy = KvGetFloat(kv, "cloak_range_easy", flBossDefaultCloakRange);
	float flBossCloakRangeHard = KvGetFloat(kv, "cloak_range_hard", flBossDefaultCloakRange);
	float flBossCloakRangeInsane = KvGetFloat(kv, "cloak_range_insane", flBossCloakRangeHard);
	float flBossCloakRangeNightmare = KvGetFloat(kv, "cloak_range_nightmare", flBossCloakRangeInsane);
	float flBossCloakRangeApollyon = KvGetFloat(kv, "cloak_range_apollyon", flBossCloakRangeNightmare);
	
	bool bProjectileEnable = view_as<bool>(KvGetNum(kv, "projectile_enable"));
	
	float flProjectileCooldownMin = KvGetFloat(kv, "projectile_cooldown_min", 1.0);
	float flProjectileCooldownMinEasy = KvGetFloat(kv, "projectile_cooldown_min_easy", flProjectileCooldownMin);
	float flProjectileCooldownMinHard = KvGetFloat(kv, "projectile_cooldown_min_hard", flProjectileCooldownMin);
	float flProjectileCooldownMinInsane = KvGetFloat(kv, "projectile_cooldown_min_insane", flProjectileCooldownMinHard);
	float flProjectileCooldownMinNightmare = KvGetFloat(kv, "projectile_cooldown_min_nightmare", flProjectileCooldownMinInsane);
	float flProjectileCooldownMinApollyon = KvGetFloat(kv, "projectile_cooldown_min_apollyon", flProjectileCooldownMinNightmare);
	
	float flProjectileCooldownMax = KvGetFloat(kv, "projectile_cooldown_max", 2.0);
	float flProjectileCooldownMaxEasy = KvGetFloat(kv, "projectile_cooldown_max_easy", flProjectileCooldownMax);
	float flProjectileCooldownMaxHard = KvGetFloat(kv, "projectile_cooldown_max_hard", flProjectileCooldownMax);
	float flProjectileCooldownMaxInsane = KvGetFloat(kv, "projectile_cooldown_max_insane", flProjectileCooldownMaxHard);
	float flProjectileCooldownMaxNightmare = KvGetFloat(kv, "projectile_cooldown_max_nightmare", flProjectileCooldownMaxInsane);
	float flProjectileCooldownMaxApollyon = KvGetFloat(kv, "projectile_cooldown_max_apollyon", flProjectileCooldownMaxNightmare);
	
	float flIceballSlowdownDuration = KvGetFloat(kv, "projectile_iceslow_duration", 2.0);
	float flIceballSlowdownDurationEasy = KvGetFloat(kv, "projectile_iceslow_duration_easy", flIceballSlowdownDuration);
	float flIceballSlowdownDurationHard = KvGetFloat(kv, "projectile_iceslow_duration_hard", flIceballSlowdownDuration);
	float flIceballSlowdownDurationInsane = KvGetFloat(kv, "projectile_iceslow_duration_insane", flIceballSlowdownDurationHard);
	float flIceballSlowdownDurationNightmare = KvGetFloat(kv, "projectile_iceslow_duration_nightmare", flIceballSlowdownDurationInsane);
	float flIceballSlowdownDurationApollyon = KvGetFloat(kv, "projectile_iceslow_duration_apollyon", flIceballSlowdownDurationNightmare);
	
	float flIceballSlowdownPercent = KvGetFloat(kv, "projectile_iceslow_percent", 0.55);
	float flIceballSlowdownPercentEasy = KvGetFloat(kv, "projectile_iceslow_percent_easy", flIceballSlowdownPercent);
	float flIceballSlowdownPercentHard = KvGetFloat(kv, "projectile_iceslow_percent_hard", flIceballSlowdownPercent);
	float flIceballSlowdownPercentInsane = KvGetFloat(kv, "projectile_iceslow_percent_insane", flIceballSlowdownPercentHard);
	float flIceballSlowdownPercentNightmare = KvGetFloat(kv, "projectile_iceslow_percent_nightmare", flIceballSlowdownPercentInsane);
	float flIceballSlowdownPercentApollyon = KvGetFloat(kv, "projectile_iceslow_percent_apollyon", flIceballSlowdownPercentNightmare);

	float flProjectileSpeed = KvGetFloat(kv, "projectile_speed", 400.0);
	float flProjectileSpeedEasy = KvGetFloat(kv, "projectile_speed_easy", flProjectileSpeed);
	float flProjectileSpeedHard = KvGetFloat(kv, "projectile_speed_hard", flProjectileSpeed);
	float flProjectileSpeedInsane = KvGetFloat(kv, "projectile_speed_insane", flProjectileSpeedHard);
	float flProjectileSpeedNightmare = KvGetFloat(kv, "projectile_speed_nightmare", flProjectileSpeedInsane);
	float flProjectileSpeedApollyon = KvGetFloat(kv, "projectile_speed_apollyon", flProjectileSpeedNightmare);

	float flProjectileDamage = KvGetFloat(kv, "projectile_damage", 50.0);
	float flProjectileDamageEasy = KvGetFloat(kv, "projectile_damage_easy", flProjectileDamage);
	float flProjectileDamageHard = KvGetFloat(kv, "projectile_damage_hard", flProjectileDamage);
	float flProjectileDamageInsane = KvGetFloat(kv, "projectile_damage_insane", flProjectileDamageHard);
	float flProjectileDamageNightmare = KvGetFloat(kv, "projectile_damage_nightmare", flProjectileDamageInsane);
	float flProjectileDamageApollyon = KvGetFloat(kv, "projectile_damage_apollyon", flProjectileDamageNightmare);

	float flProjectileRadius = KvGetFloat(kv, "projectile_damageradius", 128.0);
	float flProjectileRadiusEasy = KvGetFloat(kv, "projectile_damageradius_easy", flProjectileRadius);
	float flProjectileRadiusHard = KvGetFloat(kv, "projectile_damageradius_hard", flProjectileRadius);
	float flProjectileRadiusInsane = KvGetFloat(kv, "projectile_damageradius_insane", flProjectileRadiusHard);
	float flProjectileRadiusNightmare = KvGetFloat(kv, "projectile_damageradius_nightmare", flProjectileRadiusInsane);
	float flProjectileRadiusApollyon = KvGetFloat(kv, "projectile_damageradius_apollyon", flProjectileRadiusNightmare);
	
	bool bRocketCritical = view_as<bool>(KvGetNum(kv, "enable_crit_rockets"));
	bool bUseShootGesture = view_as<bool>(KvGetNum(kv, "use_gesture_shoot"));
	
	bool bEnableProjectileClips = view_as<bool>(KvGetNum(kv, "projectile_clips_enable"));
	
	int iProjectileClips = KvGetNum(kv, "projectile_ammo_loaded", 3);
	int iProjectileClipsEasy = KvGetNum(kv, "projectile_ammo_loaded_easy", iProjectileClips);
	int iProjectileClipsHard = KvGetNum(kv, "projectile_ammo_loaded_hard", iProjectileClips);
	int iProjectileClipsInsane = KvGetNum(kv, "projectile_ammo_loaded_insane", iProjectileClipsHard);
	int iProjectileClipsNightmare = KvGetNum(kv, "projectile_ammo_loaded_nightmare", iProjectileClipsInsane);
	int iProjectileClipsApollyon = KvGetNum(kv, "projectile_ammo_loaded_apollyon", iProjectileClipsNightmare);
	
	float flProjectilesReload = KvGetFloat(kv, "projectile_reload_time", 2.0);
	float flProjectilesReloadEasy = KvGetFloat(kv, "projectile_reload_time_easy", flProjectilesReload);
	float flProjectilesReloadHard = KvGetFloat(kv, "projectile_reload_time_hard", flProjectilesReload);
	float flProjectilesReloadInsane = KvGetFloat(kv, "projectile_reload_time_insane", flProjectilesReloadHard);
	float flProjectilesReloadNightmare = KvGetFloat(kv, "projectile_reload_time_nightmare", flProjectilesReloadInsane);
	float flProjectilesReloadApollyon = KvGetFloat(kv, "projectile_reload_time_apollyon", flProjectilesReloadNightmare);
	
	bool bEnableChargeUpProjectiles = view_as<bool>(KvGetNum(kv, "projectile_chargeup_enable"));
	
	float flProjectileChargeUpDuration = KvGetFloat(kv, "projectile_chargeup_duration", 5.0);
	float flProjectileChargeUpDurationEasy = KvGetFloat(kv, "projectile_chargeup_duration_easy", flProjectileChargeUpDuration);
	float flProjectileChargeUpDurationHard = KvGetFloat(kv, "projectile_chargeup_duration_hard", flProjectileChargeUpDuration);
	float flProjectileChargeUpDurationInsane = KvGetFloat(kv, "projectile_chargeup_duration_insane", flProjectileChargeUpDurationHard);
	float flProjectileChargeUpDurationNightmare = KvGetFloat(kv, "projectile_chargeup_duration_nightmare", flProjectileChargeUpDurationInsane);
	float flProjectileChargeUpDurationApollyon = KvGetFloat(kv, "projectile_chargeup_duration_apollyon", flProjectileChargeUpDurationNightmare);
	
	bool bAdvancedDamageEffectsEnabled = view_as<bool>(KvGetNum(kv, "player_damage_effects"));
	bool bAdvancedDamageEffectsParticles = view_as<bool>(KvGetNum(kv, "player_attach_particle", 1));
	
	bool bJaratePlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_jarate_on_hit"));
	
	int iJaratePlayerAttackIndexes = KvGetNum(kv, "player_jarate_attack_indexs", 1);
	if (iJaratePlayerAttackIndexes < 0) iJaratePlayerAttackIndexes = 1;
	
	float flJaratePlayerDurationNormal = KvGetFloat(kv, "player_jarate_duration");
	float flJaratePlayerDurationEasy = KvGetFloat(kv, "player_jarate_duration_easy", flJaratePlayerDurationNormal);
	float flJaratePlayerDurationHard = KvGetFloat(kv, "player_jarate_duration_hard", flJaratePlayerDurationNormal);
	float flJaratePlayerDurationInsane = KvGetFloat(kv, "player_jarate_duration_insane", flJaratePlayerDurationHard);
	float flJaratePlayerDurationNightmare = KvGetFloat(kv, "player_jarate_duration_nightmare", flJaratePlayerDurationInsane);
	float flJaratePlayerDurationApollyon = KvGetFloat(kv, "player_jarate_duration_apollyon", flJaratePlayerDurationNightmare);

	bool bMilkPlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_milk_on_hit"));
	
	int iMilkPlayerAttackIndexes = KvGetNum(kv, "player_milk_attack_indexs", 1);
	if (iMilkPlayerAttackIndexes < 0) iMilkPlayerAttackIndexes = 1;
	
	float flMilkPlayerDurationNormal = KvGetFloat(kv, "player_milk_duration");
	float flMilkPlayerDurationEasy = KvGetFloat(kv, "player_milk_duration_easy", flMilkPlayerDurationNormal);
	float flMilkPlayerDurationHard = KvGetFloat(kv, "player_milk_duration_hard", flMilkPlayerDurationNormal);
	float flMilkPlayerDurationInsane = KvGetFloat(kv, "player_milk_duration_insane", flMilkPlayerDurationHard);
	float flMilkPlayerDurationNightmare = KvGetFloat(kv, "player_milk_duration_nightmare", flMilkPlayerDurationInsane);
	float flMilkPlayerDurationApollyon = KvGetFloat(kv, "player_milk_duration_apollyon", flMilkPlayerDurationNightmare);

	bool bGasPlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_gas_on_hit"));
	
	int iGasPlayerAttackIndexes = KvGetNum(kv, "player_gas_attack_indexs", 1);
	if (iGasPlayerAttackIndexes < 0) iGasPlayerAttackIndexes = 1;
	
	float flGasPlayerDurationNormal = KvGetFloat(kv, "player_gas_duration");
	float flGasPlayerDurationEasy = KvGetFloat(kv, "player_gas_duration_easy", flGasPlayerDurationNormal);
	float flGasPlayerDurationHard = KvGetFloat(kv, "player_gas_duration_hard", flGasPlayerDurationNormal);
	float flGasPlayerDurationInsane = KvGetFloat(kv, "player_gas_duration_insane", flGasPlayerDurationHard);
	float flGasPlayerDurationNightmare = KvGetFloat(kv, "player_gas_duration_nightmare", flGasPlayerDurationInsane);
	float flGasPlayerDurationApollyon = KvGetFloat(kv, "player_gas_duration_apollyon", flGasPlayerDurationNightmare);

	bool bMarkPlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_mark_on_hit"));
	
	int iMarkPlayerAttackIndexes = KvGetNum(kv, "player_mark_attack_indexs", 1);
	if (iMarkPlayerAttackIndexes < 0) iMarkPlayerAttackIndexes = 1;
	
	float flMarkPlayerDurationNormal = KvGetFloat(kv, "player_mark_duration");
	float flMarkPlayerDurationEasy = KvGetFloat(kv, "player_mark_duration_easy", flMarkPlayerDurationNormal);
	float flMarkPlayerDurationHard = KvGetFloat(kv, "player_mark_duration_hard", flMarkPlayerDurationNormal);
	float flMarkPlayerDurationInsane = KvGetFloat(kv, "player_mark_duration_insane", flMarkPlayerDurationHard);
	float flMarkPlayerDurationNightmare = KvGetFloat(kv, "player_mark_duration_nightmare", flMarkPlayerDurationInsane);
	float flMarkPlayerDurationApollyon = KvGetFloat(kv, "player_mark_duration_apollyon", flMarkPlayerDurationNightmare);

	bool bIgnitePlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_ignite_on_hit"));
	
	int iIgnitePlayerAttackIndexes = KvGetNum(kv, "player_ignite_attack_indexs", 1);
	if (iIgnitePlayerAttackIndexes < 0) iIgnitePlayerAttackIndexes = 1;
	
	float flIgnitePlayerDelayNormal = KvGetFloat(kv, "player_ignite_delay");
	float flIgnitePlayerDelayEasy = KvGetFloat(kv, "player_ignite_delay_easy", flIgnitePlayerDelayNormal);
	float flIgnitePlayerDelayHard = KvGetFloat(kv, "player_ignite_delay_hard", flIgnitePlayerDelayNormal);
	float flIgnitePlayerDelayInsane = KvGetFloat(kv, "player_ignite_delay_insane", flIgnitePlayerDelayHard);
	float flIgnitePlayerDelayNightmare = KvGetFloat(kv, "player_ignite_delay_nightmare", flIgnitePlayerDelayInsane);
	float flIgnitePlayerDelayApollyon = KvGetFloat(kv, "player_ignite_delay_apollyon", flIgnitePlayerDelayNightmare);

	bool bStunPlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_stun_on_hit"));
	
	int iStunPlayerType = KvGetNum(kv, "player_stun_type");
	if (iStunPlayerType < 0) iStunPlayerType = 0;
	if (iStunPlayerType > 3) iStunPlayerType = 3;
	
	int iStunPlayerAttackIndexes = KvGetNum(kv, "player_stun_attack_indexs", 1);
	if (iStunPlayerAttackIndexes < 0) iStunPlayerAttackIndexes = 1;
	
	float flStunPlayerDurationNormal = KvGetFloat(kv, "player_stun_duration");
	float flStunPlayerDurationEasy = KvGetFloat(kv, "player_stun_duration_easy", flStunPlayerDurationNormal);
	float flStunPlayerDurationHard = KvGetFloat(kv, "player_stun_duration_hard", flStunPlayerDurationNormal);
	float flStunPlayerDurationInsane = KvGetFloat(kv, "player_stun_duration_insane", flStunPlayerDurationHard);
	float flStunPlayerDurationNightmare = KvGetFloat(kv, "player_stun_duration_nightmare", flStunPlayerDurationInsane);
	float flStunPlayerDurationApollyon = KvGetFloat(kv, "player_stun_duration_apollyon", flStunPlayerDurationNightmare);
	
	float flStunPlayerSlowdownNormal = KvGetFloat(kv, "player_stun_slowdown");
	if (flStunPlayerSlowdownNormal > 1.0) flStunPlayerSlowdownNormal = 1.0;
	if (flStunPlayerSlowdownNormal < 0.0) flStunPlayerSlowdownNormal = 0.0;
	float flStunPlayerSlowdownEasy = KvGetFloat(kv, "player_stun_slowdown_easy", flStunPlayerSlowdownNormal);
	if (flStunPlayerSlowdownEasy > 1.0) flStunPlayerSlowdownEasy = 1.0;
	if (flStunPlayerSlowdownEasy < 0.0) flStunPlayerSlowdownEasy = 0.0;
	float flStunPlayerSlowdownHard = KvGetFloat(kv, "player_stun_slowdown_hard", flStunPlayerSlowdownNormal);
	if (flStunPlayerSlowdownHard > 1.0) flStunPlayerSlowdownHard = 1.0;
	if (flStunPlayerSlowdownHard < 0.0) flStunPlayerSlowdownHard = 0.0;
	float flStunPlayerSlowdownInsane = KvGetFloat(kv, "player_stun_slowdown_insane", flStunPlayerSlowdownHard);
	if (flStunPlayerSlowdownInsane > 1.0) flStunPlayerSlowdownInsane = 1.0;
	if (flStunPlayerSlowdownInsane < 0.0) flStunPlayerSlowdownInsane = 0.0;
	float flStunPlayerSlowdownNightmare = KvGetFloat(kv, "player_stun_slowdown_nightmare", flStunPlayerSlowdownInsane);
	if (flStunPlayerSlowdownNightmare > 1.0) flStunPlayerSlowdownNightmare = 1.0;
	if (flStunPlayerSlowdownNightmare < 0.0) flStunPlayerSlowdownNightmare = 0.0;
	float flStunPlayerSlowdownApollyon = KvGetFloat(kv, "player_stun_slowdown_apollyon", flStunPlayerSlowdownNightmare);
	if (flStunPlayerSlowdownApollyon > 1.0) flStunPlayerSlowdownApollyon = 1.0;
	if (flStunPlayerSlowdownApollyon < 0.0) flStunPlayerSlowdownApollyon = 0.0;

	bool bBleedPlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_bleed_on_hit"));
	
	int iBleedPlayerAttackIndexes = KvGetNum(kv, "player_bleed_attack_indexs", 1);
	if (iBleedPlayerAttackIndexes < 0) iBleedPlayerAttackIndexes = 1;
	
	float flBleedPlayerDurationNormal = KvGetFloat(kv, "player_bleed_duration");
	float flBleedPlayerDurationEasy = KvGetFloat(kv, "player_bleed_duration_easy", flBleedPlayerDurationNormal);
	float flBleedPlayerDurationHard = KvGetFloat(kv, "player_bleed_duration_hard", flBleedPlayerDurationNormal);
	float flBleedPlayerDurationInsane = KvGetFloat(kv, "player_bleed_duration_insane", flBleedPlayerDurationHard);
	float flBleedPlayerDurationNightmare = KvGetFloat(kv, "player_bleed_duration_nightmare", flBleedPlayerDurationInsane);
	float flBleedPlayerDurationApollyon = KvGetFloat(kv, "player_bleed_duration_apollyon", flBleedPlayerDurationNightmare);

	bool bEletricPlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_electric_slow_on_hit"));
	
	int iEletricPlayerAttackIndexes = KvGetNum(kv, "player_electrocute_attack_indexs", 1);
	if (iEletricPlayerAttackIndexes < 0) iEletricPlayerAttackIndexes = 1;
	
	float flEletricPlayerDurationNormal = KvGetFloat(kv, "player_electric_slow_duration");
	float flEletricPlayerDurationEasy = KvGetFloat(kv, "player_electric_slow_duration_easy", flEletricPlayerDurationNormal);
	float flEletricPlayerDurationHard = KvGetFloat(kv, "player_electric_slow_duration_hard", flEletricPlayerDurationNormal);
	float flEletricPlayerDurationInsane = KvGetFloat(kv, "player_electric_slow_duration_insane", flEletricPlayerDurationHard);
	float flEletricPlayerDurationNightmare = KvGetFloat(kv, "player_electric_slow_duration_nightmare", flEletricPlayerDurationInsane);
	float flEletricPlayerDurationApollyon = KvGetFloat(kv, "player_electric_slow_duration_apollyon", flEletricPlayerDurationNightmare);
	
	float flEletricPlayerSlowdownNormal = KvGetFloat(kv, "player_electric_slow_slowdown");
	if (flEletricPlayerSlowdownNormal > 1.0) flEletricPlayerSlowdownNormal = 1.0;
	if (flEletricPlayerSlowdownNormal < 0.0) flEletricPlayerSlowdownNormal = 0.0;
	float flEletricPlayerSlowdownEasy = KvGetFloat(kv, "player_electric_slow_slowdown_easy", flEletricPlayerSlowdownNormal);
	if (flEletricPlayerSlowdownEasy > 1.0) flEletricPlayerSlowdownEasy = 1.0;
	if (flEletricPlayerSlowdownEasy < 0.0) flEletricPlayerSlowdownEasy = 0.0;
	float flEletricPlayerSlowdownHard = KvGetFloat(kv, "player_electric_slow_slowdown_hard", flEletricPlayerSlowdownNormal);
	if (flEletricPlayerSlowdownHard > 1.0) flEletricPlayerSlowdownHard = 1.0;
	if (flEletricPlayerSlowdownHard < 0.0) flEletricPlayerSlowdownHard = 0.0;
	float flEletricPlayerSlowdownInsane = KvGetFloat(kv, "player_electric_slow_slowdown_insane", flEletricPlayerSlowdownHard);
	if (flEletricPlayerSlowdownInsane > 1.0) flEletricPlayerSlowdownInsane = 1.0;
	if (flEletricPlayerSlowdownInsane < 0.0) flEletricPlayerSlowdownInsane = 0.0;
	float flEletricPlayerSlowdownNightmare = KvGetFloat(kv, "player_electric_slow_slowdown_nightmare", flEletricPlayerSlowdownInsane);
	if (flEletricPlayerSlowdownNightmare > 1.0) flEletricPlayerSlowdownNightmare = 1.0;
	if (flEletricPlayerSlowdownNightmare < 0.0) flEletricPlayerSlowdownNightmare = 0.0;
	float flEletricPlayerSlowdownApollyon = KvGetFloat(kv, "player_electric_slow_slowdown_apollyon", flEletricPlayerSlowdownNightmare);
	if (flEletricPlayerSlowdownApollyon > 1.0) flEletricPlayerSlowdownApollyon = 1.0;
	if (flEletricPlayerSlowdownApollyon < 0.0) flEletricPlayerSlowdownApollyon = 0.0;
	
	bool bSmitePlayerAdvanced = view_as<bool>(KvGetNum(kv, "player_smite_on_hit"));
	
	int iSmiteAttackIndexes = KvGetNum(kv, "player_smite_attack_indexs", 1);
	if (iSmiteAttackIndexes < 0) iSmiteAttackIndexes = 1;

	float flSmiteDamage = KvGetFloat(kv, "player_smite_damage", 9001.0);
	int iSmiteDamageType = KvGetNum(kv, "player_smite_damage_type", 1048576); //Critical cause we're mean
	int iSmiteColorR = KvGetNum(kv, "player_smite_color_r", 255);
	int iSmiteColorG = KvGetNum(kv, "player_smite_color_g", 255);
	int iSmiteColorB = KvGetNum(kv, "player_smite_color_b", 255);
	int iSmiteColorTrans = KvGetNum(kv, "player_smite_transparency", 255);

	int iProjectileType = KvGetNum(kv, "projectile_type", SF2BossProjectileType_Fireball);
	
	bool bDamageParticlesEnabled = view_as<bool>(KvGetNum(kv, "damage_particle_effect_enabled"));
	float flDamageParticleVolume = KvGetFloat(kv, "damage_particle_effect_volume");
	int iDamageParticlePitch = KvGetNum(kv, "damage_particle_effect_pitch");
	if (iDamageParticlePitch < 1) iDamageParticlePitch = 1;
	if (iDamageParticlePitch > 255) iDamageParticlePitch = 255;
	
	bool bShockwaveEnabled = view_as<bool>(KvGetNum(kv, "shockwave"));
	
	float flShockwaveHeight = KvGetFloat(kv, "shockwave_height", 64.0);
	float flShockwaveHeightEasy = KvGetFloat(kv, "shockwave_height_easy", flShockwaveHeight);
	float flShockwaveHeightHard = KvGetFloat(kv, "shockwave_height_hard", flShockwaveHeight);
	float flShockwaveHeightInsane = KvGetFloat(kv, "shockwave_height_insane", flShockwaveHeight);
	float flShockwaveHeightNightmare = KvGetFloat(kv, "shockwave_height_nightmare", flShockwaveHeight);
	
	float flShockwaveRange = KvGetFloat(kv, "shockwave_range", 200.0);
	float flShockwaveRangeEasy = KvGetFloat(kv, "shockwave_range_easy", flShockwaveRange);
	float flShockwaveRangeHard = KvGetFloat(kv, "shockwave_range_hard", flShockwaveRange);
	float flShockwaveRangeInsane = KvGetFloat(kv, "shockwave_range_insane", flShockwaveRange);
	float flShockwaveRangeNightmare = KvGetFloat(kv, "shockwave_range_nightmare", flShockwaveRange);
	
	float flShockwaveDrain = KvGetFloat(kv, "shockwave_drain", 0.2);
	float flShockwaveDrainEasy = KvGetFloat(kv, "shockwave_drain_easy", flShockwaveDrain);
	float flShockwaveDrainHard = KvGetFloat(kv, "shockwave_drain_hard", flShockwaveDrain);
	float flShockwaveDrainInsane = KvGetFloat(kv, "shockwave_drain_insane", flShockwaveDrain);
	float flShockwaveDrainNightmare = KvGetFloat(kv, "shockwave_drain_nightmare", flShockwaveDrain);

	float flShockwaveForce = KvGetFloat(kv, "shockwave_force", 6.0);
	float flShockwaveForceEasy = KvGetFloat(kv, "shockwave_force_easy", flShockwaveForce);
	float flShockwaveForceHard = KvGetFloat(kv, "shockwave_force_hard", flShockwaveForce);
	float flShockwaveForceInsane = KvGetFloat(kv, "shockwave_force_insane", flShockwaveForce);
	float flShockwaveForceNightmare = KvGetFloat(kv, "shockwave_force_nightmare", flShockwaveForce);
	
	bool bShockwaveStunEnabled = view_as<bool>(KvGetNum(kv, "shockwave_stun"));
	
	float flShockwaveStunDuration = KvGetFloat(kv, "shockwave_stun_duration", 2.0);
	float flShockwaveStunDurationEasy = KvGetFloat(kv, "shockwave_stun_duration_easy", flShockwaveStunDuration);
	float flShockwaveStunDurationHard = KvGetFloat(kv, "shockwave_stun_duration_hard", flShockwaveStunDuration);
	float flShockwaveStunDurationInsane = KvGetFloat(kv, "shockwave_stun_duration_insane", flShockwaveStunDuration);
	float flShockwaveStunDurationNightmare = KvGetFloat(kv, "shockwave_stun_duration_nightmare", flShockwaveStunDuration);
	
	float flShockwaveStunSlowdown = KvGetFloat(kv, "shockwave_stun_slowdown", 0.7);
	float flShockwaveStunSlowdownEasy = KvGetFloat(kv, "shockwave_stun_slowdown_easy", flShockwaveStunSlowdown);
	float flShockwaveStunSlowdownHard = KvGetFloat(kv, "shockwave_stun_slowdown_hard", flShockwaveStunSlowdown);
	float flShockwaveStunSlowdownInsane = KvGetFloat(kv, "shockwave_stun_slowdown_insane", flShockwaveStunSlowdown);
	float flShockwaveStunSlowdownNightmare = KvGetFloat(kv, "shockwave_stun_slowdown_nightmare", flShockwaveStunSlowdown);
	
	int iShockwaveAttackIndexes = KvGetNum(kv, "shockwave_attack_index", 1);
	if (iShockwaveAttackIndexes < 0) iShockwaveAttackIndexes = 1;
	
	bool bTrapsEnabled = view_as<bool>(KvGetNum(kv, "traps_enabled"));
	
	int iTrapType = KvGetNum(kv, "trap_type", 0);
	
	float flTrapSpawnCooldown = KvGetFloat(kv, "trap_spawn_cooldown", 8.0);
	float flTrapSpawnCooldownEasy = KvGetFloat(kv, "trap_spawn_cooldown_easy", flTrapSpawnCooldown);
	float flTrapSpawnCooldownHard = KvGetFloat(kv, "trap_spawn_cooldown_hard", flTrapSpawnCooldown);
	float flTrapSpawnCooldownInsane = KvGetFloat(kv, "trap_spawn_cooldown_insane", flTrapSpawnCooldownHard);
	float flTrapSpawnCooldownNightmare = KvGetFloat(kv, "trap_spawn_cooldown_nightmare", flTrapSpawnCooldownInsane);
	float flTrapSpawnCooldownApollyon = KvGetFloat(kv, "trap_spawn_cooldown_apollyon", flTrapSpawnCooldownNightmare);

	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossStepSize, ChaserProfileData_StepSize);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossDefaultWalkSpeed, ChaserProfileData_WalkSpeedNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossWalkSpeedEasy, ChaserProfileData_WalkSpeedEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossWalkSpeedHard, ChaserProfileData_WalkSpeedHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossWalkSpeedInsane, ChaserProfileData_WalkSpeedInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossWalkSpeedNightmare, ChaserProfileData_WalkSpeedNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossWalkSpeedApollyon, ChaserProfileData_WalkSpeedApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossDefaultAirSpeed, ChaserProfileData_AirSpeedNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossAirSpeedEasy, ChaserProfileData_AirSpeedEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossAirSpeedHard, ChaserProfileData_AirSpeedHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossAirSpeedInsane, ChaserProfileData_AirSpeedInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossAirSpeedNightmare, ChaserProfileData_AirSpeedNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossAirSpeedApollyon, ChaserProfileData_AirSpeedApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossDefaultMaxWalkSpeed, ChaserProfileData_MaxWalkSpeedNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxWalkSpeedEasy, ChaserProfileData_MaxWalkSpeedEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxWalkSpeedHard, ChaserProfileData_MaxWalkSpeedHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxWalkSpeedInsane, ChaserProfileData_MaxWalkSpeedInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxWalkSpeedNightmare, ChaserProfileData_MaxWalkSpeedNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxWalkSpeedApollyon, ChaserProfileData_MaxWalkSpeedApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossDefaultMaxAirSpeed, ChaserProfileData_MaxAirSpeedNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxAirSpeedEasy, ChaserProfileData_MaxAirSpeedEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxAirSpeedHard, ChaserProfileData_MaxAirSpeedHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxAirSpeedInsane, ChaserProfileData_MaxAirSpeedInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxAirSpeedNightmare, ChaserProfileData_MaxAirSpeedNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossMaxAirSpeedApollyon, ChaserProfileData_MaxAirSpeedApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertGracetime, ChaserProfileData_SearchAlertGracetime);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertGracetimeEasy, ChaserProfileData_SearchAlertGracetimeEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertGracetimeHard, ChaserProfileData_SearchAlertGracetimeHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertGracetimeInsane, ChaserProfileData_SearchAlertGracetimeInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertGracetimeNightmare, ChaserProfileData_SearchAlertGracetimeNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertGracetimeApollyon, ChaserProfileData_SearchAlertGracetimeApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertDuration, ChaserProfileData_SearchAlertDuration);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertDurationEasy, ChaserProfileData_SearchAlertDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertDurationHard, ChaserProfileData_SearchAlertDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertDurationInsane, ChaserProfileData_SearchAlertDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertDurationNightmare, ChaserProfileData_SearchAlertDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flAlertDurationApollyon, ChaserProfileData_SearchAlertDurationApollyon);

	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flChaseDuration, ChaserProfileData_SearchChaseDuration);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flChaseDurationEasy, ChaserProfileData_SearchChaseDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flChaseDurationHard, ChaserProfileData_SearchChaseDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flChaseDurationInsane, ChaserProfileData_SearchChaseDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flChaseDurationNightmare, ChaserProfileData_SearchChaseDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flChaseDurationApollyon, ChaserProfileData_SearchChaseDurationApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flWakeRange, ChaserProfileData_WakeRadius);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bCanBeStunned, ChaserProfileData_CanBeStunned);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunDuration, ChaserProfileData_StunDuration);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunCooldown, ChaserProfileData_StunCooldown);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunHealth, ChaserProfileData_StunHealth);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunHealthPerPlayer, ChaserProfileData_StunHealthPerPlayer);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bStunTakeDamageFromFlashlight, ChaserProfileData_CanBeStunnedByFlashlight);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunFlashlightDamage, ChaserProfileData_StunFlashlightDamage);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bKeyDrop, ChaserProfileData_KeyDrop);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bCanCloak, ChaserProfileData_CanCloak);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossDefaultCloakCooldown, ChaserProfileData_CloakCooldownNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakCooldownEasy, ChaserProfileData_CloakCooldownEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakCooldownHard, ChaserProfileData_CloakCooldownHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakCooldownInsane, ChaserProfileData_CloakCooldownInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakCooldownNightmare, ChaserProfileData_CloakCooldownNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakCooldownApollyon, ChaserProfileData_CloakCooldownApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossDefaultCloakRange, ChaserProfileData_CloakRangeNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakRangeEasy, ChaserProfileData_CloakRangeEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakRangeHard, ChaserProfileData_CloakRangeHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakRangeInsane, ChaserProfileData_CloakRangeInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakRangeNightmare, ChaserProfileData_CloakRangeNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBossCloakRangeApollyon, ChaserProfileData_CloakRangeApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bProjectileEnable, ChaserProfileData_ProjectileEnable);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bRocketCritical, ChaserProfileData_CriticlaRockets);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bUseShootGesture, ChaserProfileData_UseShootGesture);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bEnableProjectileClips, ChaserProfileData_ProjectileClipEnable);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bEnableChargeUpProjectiles, ChaserProfileData_UseChargeUpProjectiles);

	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMin, ChaserProfileData_ProjectileCooldownMinNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMinEasy, ChaserProfileData_ProjectileCooldownMinEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMinHard, ChaserProfileData_ProjectileCooldownMinHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMinInsane, ChaserProfileData_ProjectileCooldownMinInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMinNightmare, ChaserProfileData_ProjectileCooldownMinNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMinApollyon, ChaserProfileData_ProjectileCooldownMinApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMax, ChaserProfileData_ProjectileCooldownMaxNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMaxEasy, ChaserProfileData_ProjectileCooldownMaxEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMaxHard, ChaserProfileData_ProjectileCooldownMaxHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMaxInsane, ChaserProfileData_ProjectileCooldownMaxInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMaxNightmare, ChaserProfileData_ProjectileCooldownMaxNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileCooldownMaxApollyon, ChaserProfileData_ProjectileCooldownMaxApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownDuration, ChaserProfileData_IceballSlowdownDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownDurationEasy, ChaserProfileData_IceballSlowdownDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownDurationHard, ChaserProfileData_IceballSlowdownDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownDurationInsane, ChaserProfileData_IceballSlowdownDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownDurationNightmare, ChaserProfileData_IceballSlowdownDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownDurationApollyon, ChaserProfileData_IceballSlowdownDurationApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownPercent, ChaserProfileData_IceballSlowdownPercentNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownPercentEasy, ChaserProfileData_IceballSlowdownPercentEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownPercentHard, ChaserProfileData_IceballSlowdownPercentHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownPercentInsane, ChaserProfileData_IceballSlowdownPercentInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownPercentNightmare, ChaserProfileData_IceballSlowdownPercentNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIceballSlowdownPercentApollyon, ChaserProfileData_IceballSlowdownPercentApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileSpeed, ChaserProfileData_ProjectileSpeedNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileSpeedEasy, ChaserProfileData_ProjectileSpeedEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileSpeedHard, ChaserProfileData_ProjectileSpeedHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileSpeedInsane, ChaserProfileData_ProjectileSpeedInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileSpeedNightmare, ChaserProfileData_ProjectileSpeedNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileSpeedApollyon, ChaserProfileData_ProjectileSpeedApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileDamage, ChaserProfileData_ProjectileDamageNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileDamageEasy, ChaserProfileData_ProjectileDamageEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileDamageHard, ChaserProfileData_ProjectileDamageHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileDamageInsane, ChaserProfileData_ProjectileDamageInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileDamageNightmare, ChaserProfileData_ProjectileDamageNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileDamageApollyon, ChaserProfileData_ProjectileDamageApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileRadius, ChaserProfileData_ProjectileRadiusNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileRadiusEasy, ChaserProfileData_ProjectileRadiusEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileRadiusHard, ChaserProfileData_ProjectileRadiusHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileRadiusInsane, ChaserProfileData_ProjectileRadiusInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileRadiusNightmare, ChaserProfileData_ProjectileRadiusNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileRadiusApollyon, ChaserProfileData_ProjectileRadiusApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iProjectileType, ChaserProfileData_ProjectileType);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iProjectileClips, ChaserProfileData_ProjectileClipNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iProjectileClipsEasy, ChaserProfileData_ProjectileClipEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iProjectileClipsHard, ChaserProfileData_ProjectileClipHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iProjectileClipsInsane, ChaserProfileData_ProjectileClipInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iProjectileClipsNightmare, ChaserProfileData_ProjectileClipNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iProjectileClipsApollyon, ChaserProfileData_ProjectileClipApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectilesReload, ChaserProfileData_ProjectileReloadTimeNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectilesReloadEasy, ChaserProfileData_ProjectileReloadTimeEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectilesReloadHard, ChaserProfileData_ProjectileReloadTimeHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectilesReloadInsane, ChaserProfileData_ProjectileReloadTimeInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectilesReloadNightmare, ChaserProfileData_ProjectileReloadTimeNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectilesReloadApollyon, ChaserProfileData_ProjectileReloadTimeApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileChargeUpDuration, ChaserProfileData_ProjectileChargeUpNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileChargeUpDurationEasy, ChaserProfileData_ProjectileChargeUpEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileChargeUpDurationHard, ChaserProfileData_ProjectileChargeUpHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileChargeUpDurationInsane, ChaserProfileData_ProjectileChargeUpInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileChargeUpDurationNightmare, ChaserProfileData_ProjectileChargeUpNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flProjectileChargeUpDurationApollyon, ChaserProfileData_ProjectileChargeUpApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bAdvancedDamageEffectsEnabled, ChaserProfileData_AdvancedDamageEffectsEnabled);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bAdvancedDamageEffectsParticles, ChaserProfileData_AdvancedDamageEffectsParticles);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bJaratePlayerAdvanced, ChaserProfileData_EnableJarateAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iJaratePlayerAttackIndexes, ChaserProfileData_JarateAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flJaratePlayerDurationEasy, ChaserProfileData_JarateAdvancedDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flJaratePlayerDurationNormal, ChaserProfileData_JarateAdvancedDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flJaratePlayerDurationHard, ChaserProfileData_JarateAdvancedDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flJaratePlayerDurationInsane, ChaserProfileData_JarateAdvancedDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flJaratePlayerDurationNightmare, ChaserProfileData_JarateAdvancedDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flJaratePlayerDurationApollyon, ChaserProfileData_JarateAdvancedDurationApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bMilkPlayerAdvanced, ChaserProfileData_EnableMilkAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iMilkPlayerAttackIndexes, ChaserProfileData_MilkAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMilkPlayerDurationEasy, ChaserProfileData_MilkAdvancedDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMilkPlayerDurationNormal, ChaserProfileData_MilkAdvancedDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMilkPlayerDurationHard, ChaserProfileData_MilkAdvancedDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMilkPlayerDurationInsane, ChaserProfileData_MilkAdvancedDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMilkPlayerDurationNightmare, ChaserProfileData_MilkAdvancedDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMilkPlayerDurationApollyon, ChaserProfileData_MilkAdvancedDurationApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bGasPlayerAdvanced, ChaserProfileData_EnableGasAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iGasPlayerAttackIndexes, ChaserProfileData_GasAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flGasPlayerDurationEasy, ChaserProfileData_GasAdvancedDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flGasPlayerDurationNormal, ChaserProfileData_GasAdvancedDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flGasPlayerDurationHard, ChaserProfileData_GasAdvancedDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flGasPlayerDurationInsane, ChaserProfileData_GasAdvancedDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flGasPlayerDurationNightmare, ChaserProfileData_GasAdvancedDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flGasPlayerDurationApollyon, ChaserProfileData_GasAdvancedDurationApollyon);

	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bMarkPlayerAdvanced, ChaserProfileData_EnableMarkAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iMarkPlayerAttackIndexes, ChaserProfileData_MarkAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMarkPlayerDurationEasy, ChaserProfileData_MarkAdvancedDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMarkPlayerDurationNormal, ChaserProfileData_MarkAdvancedDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMarkPlayerDurationHard, ChaserProfileData_MarkAdvancedDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMarkPlayerDurationInsane, ChaserProfileData_MarkAdvancedDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMarkPlayerDurationNightmare, ChaserProfileData_MarkAdvancedDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flMarkPlayerDurationApollyon, ChaserProfileData_MarkAdvancedDurationApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bIgnitePlayerAdvanced, ChaserProfileData_EnableIgniteAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iIgnitePlayerAttackIndexes, ChaserProfileData_IgniteAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIgnitePlayerDelayEasy, ChaserProfileData_IgniteAdvancedDelayEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIgnitePlayerDelayNormal, ChaserProfileData_IgniteAdvancedDelayNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIgnitePlayerDelayHard, ChaserProfileData_IgniteAdvancedDelayHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIgnitePlayerDelayInsane, ChaserProfileData_IgniteAdvancedDelayInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIgnitePlayerDelayNightmare, ChaserProfileData_IgniteAdvancedDelayNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flIgnitePlayerDelayApollyon, ChaserProfileData_IgniteAdvancedDelayApollyon);

	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bStunPlayerAdvanced, ChaserProfileData_EnableStunAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iStunPlayerAttackIndexes, ChaserProfileData_StunAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerDurationEasy, ChaserProfileData_StunAdvancedDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerDurationNormal, ChaserProfileData_StunAdvancedDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerDurationHard, ChaserProfileData_StunAdvancedDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerDurationInsane, ChaserProfileData_StunAdvancedDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerDurationNightmare, ChaserProfileData_StunAdvancedDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerDurationApollyon, ChaserProfileData_StunAdvancedDurationApollyon);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerSlowdownEasy, ChaserProfileData_StunAdvancedSlowdownEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerSlowdownNormal, ChaserProfileData_StunAdvancedSlowdownNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerSlowdownHard, ChaserProfileData_StunAdvancedSlowdownHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerSlowdownInsane, ChaserProfileData_StunAdvancedSlowdownInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerSlowdownNightmare, ChaserProfileData_StunAdvancedSlowdownNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flStunPlayerSlowdownApollyon, ChaserProfileData_StunAdvancedSlowdownApollyon);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iStunPlayerType, ChaserProfileData_StunAdvancedType);

	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bBleedPlayerAdvanced, ChaserProfileData_EnableBleedAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iBleedPlayerAttackIndexes, ChaserProfileData_BleedAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBleedPlayerDurationEasy, ChaserProfileData_BleedAdvancedDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBleedPlayerDurationNormal, ChaserProfileData_BleedAdvancedDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBleedPlayerDurationHard, ChaserProfileData_BleedAdvancedDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBleedPlayerDurationInsane, ChaserProfileData_BleedAdvancedDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBleedPlayerDurationNightmare, ChaserProfileData_BleedAdvancedDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flBleedPlayerDurationApollyon, ChaserProfileData_BleedAdvancedDurationApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bEletricPlayerAdvanced, ChaserProfileData_EnableEletricAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iEletricPlayerAttackIndexes, ChaserProfileData_EletricAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerDurationEasy, ChaserProfileData_EletricAdvancedDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerDurationNormal, ChaserProfileData_EletricAdvancedDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerDurationHard, ChaserProfileData_EletricAdvancedDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerDurationInsane, ChaserProfileData_EletricAdvancedDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerDurationNightmare, ChaserProfileData_EletricAdvancedDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerDurationApollyon, ChaserProfileData_EletricAdvancedDurationApollyon);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerSlowdownEasy, ChaserProfileData_EletricAdvancedSlowdownEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerSlowdownNormal, ChaserProfileData_EletricAdvancedSlowdownNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerSlowdownHard, ChaserProfileData_EletricAdvancedSlowdownHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerSlowdownInsane, ChaserProfileData_EletricAdvancedSlowdownInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerSlowdownNightmare, ChaserProfileData_EletricAdvancedSlowdownNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flEletricPlayerSlowdownApollyon, ChaserProfileData_EletricAdvancedSlowdownApollyon);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bSmitePlayerAdvanced, ChaserProfileData_EnableSmiteAdvanced);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iSmiteAttackIndexes, ChaserProfileData_SmiteAdvancedIndexes);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flSmiteDamage, ChaserProfileData_SmiteAdvancedDamage);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iSmiteDamageType, ChaserProfileData_SmiteAdvancedDamageType);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iSmiteColorR, ChaserProfileData_SmiteColorR);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iSmiteColorG, ChaserProfileData_SmiteColorG);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iSmiteColorB, ChaserProfileData_SmiteColorB);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iSmiteColorTrans, ChaserProfileData_SmiteTransparency);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bDamageParticlesEnabled, ChaserProfileData_EnableDamageParticles);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flDamageParticleVolume, ChaserProfileData_DamageParticleVolume);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iDamageParticlePitch, ChaserProfileData_DamageParticlePitch);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bShockwaveEnabled, ChaserProfileData_ShockwavesEnable);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveHeightEasy, ChaserProfileData_ShockwaveHeightEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveHeight, ChaserProfileData_ShockwaveHeightNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveHeightHard, ChaserProfileData_ShockwaveHeightHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveHeightInsane, ChaserProfileData_ShockwaveHeightInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveHeightNightmare, ChaserProfileData_ShockwaveHeightNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveRangeEasy, ChaserProfileData_ShockwaveRangeEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveRange, ChaserProfileData_ShockwaveRangeNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveRangeHard, ChaserProfileData_ShockwaveRangeHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveRangeInsane, ChaserProfileData_ShockwaveRangeInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveRangeNightmare, ChaserProfileData_ShockwaveRangeNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveDrainEasy, ChaserProfileData_ShockwaveDrainEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveDrain, ChaserProfileData_ShockwaveDrainNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveDrainHard, ChaserProfileData_ShockwaveDrainHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveDrainInsane, ChaserProfileData_ShockwaveDrainInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveDrainNightmare, ChaserProfileData_ShockwaveDrainNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveForceEasy, ChaserProfileData_ShockwaveForceEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveForce, ChaserProfileData_ShockwaveForceNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveForceHard, ChaserProfileData_ShockwaveForceHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveForceInsane, ChaserProfileData_ShockwaveForceInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveForceNightmare, ChaserProfileData_ShockwaveForceNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bShockwaveStunEnabled, ChaserProfileData_ShockwaveStunEnabled);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunDurationEasy, ChaserProfileData_ShockwaveStunDurationEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunDuration, ChaserProfileData_ShockwaveStunDurationNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunDurationHard, ChaserProfileData_ShockwaveStunDurationHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunDurationInsane, ChaserProfileData_ShockwaveStunDurationInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunDurationNightmare, ChaserProfileData_ShockwaveStunDurationNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunSlowdownEasy, ChaserProfileData_ShockwaveStunSlowdownEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunSlowdown, ChaserProfileData_ShockwaveStunSlowdownNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunSlowdownHard, ChaserProfileData_ShockwaveStunSlowdownHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunSlowdownInsane, ChaserProfileData_ShockwaveStunSlowdownInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flShockwaveStunSlowdownNightmare, ChaserProfileData_ShockwaveStunSlowdownNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iShockwaveAttackIndexes, ChaserProfileData_ShockwaveAttackIndexes);
	
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, bTrapsEnabled, ChaserProfileData_TrapsEnabled);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, iTrapType, ChaserProfileData_TrapType);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flTrapSpawnCooldown, ChaserProfileData_TrapSpawnCooldownNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flTrapSpawnCooldownEasy, ChaserProfileData_TrapSpawnCooldownEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flTrapSpawnCooldownHard, ChaserProfileData_TrapSpawnCooldownHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flTrapSpawnCooldownInsane, ChaserProfileData_TrapSpawnCooldownInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flTrapSpawnCooldownNightmare, ChaserProfileData_TrapSpawnCooldownNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flTrapSpawnCooldownApollyon, ChaserProfileData_TrapSpawnCooldownApollyon);
		
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "memory_lifetime", 10.0), ChaserProfileData_MemoryLifeTime);
	
	float flDefaultAwarenessIncreaseRate = KvGetFloat(kv, "awareness_rate_increase", 75.0);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_increase_easy", flDefaultAwarenessIncreaseRate), ChaserProfileData_AwarenessIncreaseRateEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flDefaultAwarenessIncreaseRate, ChaserProfileData_AwarenessIncreaseRateNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_increase_hard", flDefaultAwarenessIncreaseRate), ChaserProfileData_AwarenessIncreaseRateHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_increase_insane", flDefaultAwarenessIncreaseRate), ChaserProfileData_AwarenessIncreaseRateInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_increase_nightmare", flDefaultAwarenessIncreaseRate), ChaserProfileData_AwarenessIncreaseRateNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_increase_apollyon", flDefaultAwarenessIncreaseRate), ChaserProfileData_AwarenessIncreaseRateApollyon);
	
	float flDefaultAwarenessDecreaseRate = KvGetFloat(kv, "awareness_rate_decrease", 150.0);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_decrease_easy", flDefaultAwarenessDecreaseRate), ChaserProfileData_AwarenessDecreaseRateEasy);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, flDefaultAwarenessDecreaseRate, ChaserProfileData_AwarenessDecreaseRateNormal);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_decrease_hard", flDefaultAwarenessDecreaseRate), ChaserProfileData_AwarenessDecreaseRateHard);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_decrease_insane", flDefaultAwarenessDecreaseRate), ChaserProfileData_AwarenessDecreaseRateInsane);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_decrease_nightmare", flDefaultAwarenessDecreaseRate), ChaserProfileData_AwarenessDecreaseRateNightmare);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, KvGetFloat(kv, "awareness_rate_decrease_apollyon", flDefaultAwarenessDecreaseRate), ChaserProfileData_AwarenessDecreaseRateApollyon);
	
	ParseChaserProfileAttacks(kv, iUniqueProfileIndex);
	
	return true;
}

static int ParseChaserProfileAttacks(Handle kv,int iUniqueProfileIndex)
{
	
	// Create the array.
	Handle hAttacks = CreateArray(ChaserProfileAttackData_MaxStats);
	SetArrayCell(g_hChaserProfileData, iUniqueProfileIndex, hAttacks, ChaserProfileData_Attacks);
	
	int iMaxAttacks = -1;
	if (KvJumpToKey(kv, "attacks"))
	{
		iMaxAttacks = 0;
		char sNum[3];
		for (int i = 1; i <= SF2_CHASER_BOSS_MAX_ATTACKS; i++)
		{
			IntToString(i, sNum, sizeof(sNum));
			if (KvJumpToKey(kv, sNum))
			{
				iMaxAttacks++;
				KvGoBack(kv);
			}
		}
		if (iMaxAttacks == 0)
		{
			LogSF2Message("[SF2 PROFILES PARSER] Critical error, found \"attacks\" section with no attacks inside of it!");
		}
	}
	for (int iAttackNum = -1; iAttackNum <=iMaxAttacks; iAttackNum++)
	{
		if (iAttackNum < 1) iAttackNum = 1;
		if (iMaxAttacks > 0) //Backward compatibility
		{
			char sNum[3];
			IntToString(iAttackNum, sNum, sizeof(sNum));
			KvJumpToKey(kv, sNum);
		}
		int iAttackType = KvGetNum(kv, "attack_type", SF2BossAttackType_Melee);
		//int iAttackType = SF2BossAttackType_Melee;
		
		float flAttackRange = KvGetFloat(kv, "attack_range");
		if (flAttackRange < 0.0) flAttackRange = 0.0;
		
		float flAttackDamage = KvGetFloat(kv, "attack_damage");
		float flAttackDamageVsProps = KvGetFloat(kv, "attack_damage_vs_props", flAttackDamage);
		float flAttackDamageForce = KvGetFloat(kv, "attack_damageforce");
		
		int iAttackDamageType = KvGetNum(kv, "attack_damagetype");
		if (iAttackDamageType < 0) iAttackDamageType = 0;
		
		float flAttackDamageDelay = KvGetFloat(kv, "attack_delay");
		if (flAttackDamageDelay < 0.0) flAttackDamageDelay = 0.0;
		
		float flAttackDuration = KvGetFloat(kv, "attack_duration", 0.0);
		if (flAttackDuration <= 0.0)//Backward compatibility
		{
			if (flAttackDuration < 0.0) flAttackDuration = 0.0;
			flAttackDuration = flAttackDamageDelay+KvGetFloat(kv, "attack_endafter", 0.0);
		}
		
		bool bAttackProps = view_as<bool>(KvGetNum(kv, "attack_props", 0));
		
		float flAttackSpreadOld = KvGetFloat(kv, "attack_fov", 45.0);
		float flAttackSpread = KvGetFloat(kv, "attack_spread", flAttackSpreadOld);
		
		if (flAttackSpread < 0.0) flAttackSpread = 0.0;
		else if (flAttackSpread > 360.0) flAttackSpread = 360.0;
		
		float flAttackBeginRange = KvGetFloat(kv, "attack_begin_range", flAttackRange);
		if (flAttackBeginRange < 0.0) flAttackBeginRange = 0.0;
		
		float flAttackBeginFOV = KvGetFloat(kv, "attack_begin_fov", flAttackSpread);
		if (flAttackBeginFOV < 0.0) flAttackBeginFOV = 0.0;
		else if (flAttackBeginFOV > 360.0) flAttackBeginFOV = 360.0;
		
		float flAttackCooldown = KvGetFloat(kv, "attack_cooldown");
		if (flAttackCooldown < 0.0) flAttackCooldown = 0.0;
		
		int iAttackDisappear = KvGetNum(kv, "attack_disappear_upon_damaging");
		if (iAttackDisappear < 0) iAttackDisappear = 0;
		else if (iAttackDisappear > 1) iAttackDisappear = 1;
		
		int iAttackRepeat = KvGetNum(kv, "attack_repeat");
		if (iAttackRepeat < 0) iAttackRepeat = 0;
		else if (iAttackRepeat > 1) iAttackRepeat = 1;
		
		bool bAttackWeapons = view_as<bool>(KvGetNum(kv, "attack_weaponsenable", 0));
		
		int iAttackWeaponInt = KvGetNum(kv, "attack_weapontypeint");
		if (iAttackWeaponInt < 1) iAttackWeaponInt = 0;
		
		bool bAttackLifeSteal = view_as<bool>(KvGetNum(kv, "attack_lifesteal", 0));
		
		float flAttackLifeStealDuration = KvGetFloat(kv, "attack_lifesteal_duration", 0.0);
		if (flAttackLifeStealDuration < 0.0) flAttackLifeStealDuration = 0.0;
		
		float flAttackProjectileDamage = KvGetFloat(kv, "attack_projectile_damage", 20.0);
		if (flAttackProjectileDamage < 0.0) flAttackProjectileDamage = 0.0;
		
		float flAttackProjectileSpeed = KvGetFloat(kv, "attack_projectile_speed", 1100.0);
		if (flAttackProjectileSpeed < 0.0) flAttackProjectileSpeed = 0.0;
		
		float flAttackProjectileRadius = KvGetFloat(kv, "attack_projectile_radius", 128.0);
		if (flAttackProjectileRadius < 0.0) flAttackProjectileRadius = 0.0;
		
		bool bAttackCritProjectiles = view_as<bool>(KvGetNum(kv, "attack_projectile_crits", 0));
		
		int iAttackBulletCount = KvGetNum(kv, "attack_bullet_count", 4);
		if (iAttackBulletCount < 1) iAttackBulletCount = 1;
		
		float flAttackBulletDamage = KvGetFloat(kv, "attack_bullet_damage", 8.0);
		if (flAttackBulletDamage < 0.0) flAttackBulletDamage = 0.0;
		
		float flAttackBulletSpread = KvGetFloat(kv, "attack_bullet_spread", 0.1);
		if (flAttackBulletSpread < 0.0) flAttackBulletSpread = 0.0;
		
		char sAtkWeaponString[PLATFORM_MAX_PATH];
		KvGetString(kv, "attack_weapontype", sAtkWeaponString, sizeof(sAtkWeaponString));
		
		int iAttackIndex = PushArrayCell(hAttacks, -1);
		
		SetArrayCell(hAttacks, iAttackIndex, iAttackType, ChaserProfileAttackData_Type);
		SetArrayCell(hAttacks, iAttackIndex, bAttackProps, ChaserProfileAttackData_CanUseAgainstProps);
		SetArrayCell(hAttacks, iAttackIndex, flAttackRange, ChaserProfileAttackData_Range);
		SetArrayCell(hAttacks, iAttackIndex, flAttackDamage, ChaserProfileAttackData_Damage);
		SetArrayCell(hAttacks, iAttackIndex, flAttackDamageVsProps, ChaserProfileAttackData_DamageVsProps);
		SetArrayCell(hAttacks, iAttackIndex, flAttackDamageForce, ChaserProfileAttackData_DamageForce);
		SetArrayCell(hAttacks, iAttackIndex, iAttackDamageType, ChaserProfileAttackData_DamageType);
		SetArrayCell(hAttacks, iAttackIndex, flAttackDamageDelay, ChaserProfileAttackData_DamageDelay);
		SetArrayCell(hAttacks, iAttackIndex, flAttackDuration, ChaserProfileAttackData_Duration);
		SetArrayCell(hAttacks, iAttackIndex, flAttackSpread, ChaserProfileAttackData_Spread);
		SetArrayCell(hAttacks, iAttackIndex, flAttackBeginRange, ChaserProfileAttackData_BeginRange);
		SetArrayCell(hAttacks, iAttackIndex, flAttackBeginFOV, ChaserProfileAttackData_BeginFOV);
		SetArrayCell(hAttacks, iAttackIndex, flAttackCooldown, ChaserProfileAttackData_Cooldown);
		SetArrayCell(hAttacks, iAttackIndex, iAttackDisappear, ChaserProfileAttackData_Disappear);
		SetArrayCell(hAttacks, iAttackIndex, iAttackRepeat, ChaserProfileAttackData_Repeat);
		SetArrayCell(hAttacks, iAttackIndex, iAttackWeaponInt, ChaserProfileAttackData_WeaponInt);
		SetArrayCell(hAttacks, iAttackIndex, bAttackWeapons, ChaserProfileAttackData_CanUseWeaponTypes);
		SetArrayCell(hAttacks, iAttackIndex, bAttackLifeSteal, ChaserProfileAttackData_LifeStealEnabled);
		SetArrayCell(hAttacks, iAttackIndex, flAttackLifeStealDuration, ChaserProfileAttackData_LifeStealDuration);
		SetArrayCell(hAttacks, iAttackIndex, flAttackProjectileDamage, ChaserProfileAttackData_ProjectileDamage);
		SetArrayCell(hAttacks, iAttackIndex, flAttackProjectileSpeed, ChaserProfileAttackData_ProjectileSpeed);
		SetArrayCell(hAttacks, iAttackIndex, flAttackProjectileRadius, ChaserProfileAttackData_ProjectileRadius);
		SetArrayCell(hAttacks, iAttackIndex, bAttackCritProjectiles, ChaserProfileAttackData_ProjectileCrits);
		SetArrayCell(hAttacks, iAttackIndex, iAttackBulletCount, ChaserProfileAttackData_BulletCount);
		SetArrayCell(hAttacks, iAttackIndex, flAttackBulletDamage, ChaserProfileAttackData_BulletDamage);
		SetArrayCell(hAttacks, iAttackIndex, flAttackBulletSpread, ChaserProfileAttackData_BulletSpread);
		
		if (iMaxAttacks > 0)//Backward compatibility
		{
			KvGoBack(kv);
		}
		else
			break;
	}
	if (iMaxAttacks > 0)
		KvGoBack(kv);
	return iMaxAttacks;
}

float GetChaserProfileStepSize(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StepSize));
}

float GetChaserProfileWalkSpeed(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_WalkSpeedEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_WalkSpeedHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_WalkSpeedInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_WalkSpeedNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_WalkSpeedApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_WalkSpeedNormal));
}

float GetChaserProfileAirSpeed(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AirSpeedEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AirSpeedHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AirSpeedInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AirSpeedNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AirSpeedApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AirSpeedNormal));
}

float GetChaserProfileMaxWalkSpeed(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxWalkSpeedEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxWalkSpeedHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxWalkSpeedInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxWalkSpeedNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxWalkSpeedApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxWalkSpeedNormal));
}

float GetChaserProfileMaxAirSpeed(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxAirSpeedEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxAirSpeedHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxAirSpeedInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxAirSpeedNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxAirSpeedApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MaxAirSpeedNormal));
}

float GetChaserProfileAlertGracetime(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertGracetimeEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertGracetimeHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertGracetimeInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertGracetimeNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertGracetimeApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertGracetime));
}

float GetChaserProfileAlertDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchAlertDuration));
}

float GetChaserProfileChaseDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchChaseDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchChaseDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchChaseDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchChaseDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchChaseDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SearchChaseDuration));
}

float GetChaserProfileProjectileCooldownMin(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMinEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMinHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMinInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMinNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMinApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMinNormal));
}

float GetChaserProfileProjectileCooldownMax(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMaxEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMaxHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMaxInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMaxNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMaxApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileCooldownMaxNormal));
}

float GetChaserProfileIceballSlowdownDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownDurationNormal));
}

float GetChaserProfileIceballSlowdownPercent(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownPercentEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownPercentHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownPercentInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownPercentNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownPercentApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IceballSlowdownPercentNormal));
}

float GetChaserProfileProjectileSpeed(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileSpeedEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileSpeedHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileSpeedInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileSpeedNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileSpeedApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileSpeedNormal));
}

float GetChaserProfileProjectileDamage(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileDamageEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileDamageHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileDamageInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileDamageNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileDamageApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileDamageNormal));
}

float GetChaserProfileProjectileRadius(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileRadiusEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileRadiusHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileRadiusInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileRadiusNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileRadiusApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileRadiusNormal));
}

float GetChaserProfileJaratePlayerDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_JarateAdvancedDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_JarateAdvancedDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_JarateAdvancedDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_JarateAdvancedDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_JarateAdvancedDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_JarateAdvancedDurationNormal));
}

float GetChaserProfileMilkPlayerDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MilkAdvancedDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MilkAdvancedDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MilkAdvancedDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MilkAdvancedDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MilkAdvancedDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MilkAdvancedDurationNormal));
}

float GetChaserProfileGasPlayerDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_GasAdvancedDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_GasAdvancedDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_GasAdvancedDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_GasAdvancedDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_GasAdvancedDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_GasAdvancedDurationNormal));
}

float GetChaserProfileMarkPlayerDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MarkAdvancedDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MarkAdvancedDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MarkAdvancedDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MarkAdvancedDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MarkAdvancedDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MarkAdvancedDurationNormal));
}

float GetChaserProfileIgnitePlayerDelay(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IgniteAdvancedDelayEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IgniteAdvancedDelayHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IgniteAdvancedDelayInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IgniteAdvancedDelayNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IgniteAdvancedDelayApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IgniteAdvancedDelayNormal));
}

float GetChaserProfileStunPlayerDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedDurationNormal));
}

float GetChaserProfileStunPlayerSlowdown(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedSlowdownEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedSlowdownHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedSlowdownInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedSlowdownNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedSlowdownApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedSlowdownNormal));
}

float GetChaserProfileBleedPlayerDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_BleedAdvancedDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_BleedAdvancedDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_BleedAdvancedDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_BleedAdvancedDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_BleedAdvancedDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_BleedAdvancedDurationNormal));
}

float GetChaserProfileEletricPlayerDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedDurationNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedDurationApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedDurationNormal));
}

float GetChaserProfileEletricPlayerSlowdown(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedSlowdownEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedSlowdownHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedSlowdownInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedSlowdownNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedSlowdownApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedSlowdownNormal));
}
/*
Handle GetChaserProfileAnimationsData(int iChaserProfileIndex)
{
	return view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Animations));
}
*/
float GetChaserProfileWakeRadius(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_WakeRadius));
}

int GetChaserProfileAttackCount(int iChaserProfileIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return GetArraySize(hAttacks);
}

int GetChaserProfileJarateAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_JarateAdvancedIndexes);
}

int GetChaserProfileMilkAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MilkAdvancedIndexes);
}

int GetChaserProfileGasAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_GasAdvancedIndexes);
}

int GetChaserProfileMarkAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_MarkAdvancedIndexes);
}

int GetChaserProfileIgniteAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_IgniteAdvancedIndexes);
}

int GetChaserProfileStunAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedIndexes);
}

int GetChaserProfileStunDamageType(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunAdvancedType);
}

int GetChaserProfileBleedAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_BleedAdvancedIndexes);
}

int GetChaserProfileEletricAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EletricAdvancedIndexes);
}

int GetChaserProfileSmiteAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SmiteAdvancedIndexes);
}

int GetChaserProfileSmiteDamageType(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SmiteAdvancedDamageType);
}

int GetChaserProfileSmiteColorR(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SmiteColorR);
}

int GetChaserProfileSmiteColorG(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SmiteColorG);
}

int GetChaserProfileSmiteColorB(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SmiteColorB);
}

int GetChaserProfileSmiteColorTrans(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SmiteTransparency);
}

float GetChaserProfileSmiteDamage(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_SmiteAdvancedDamage));
}

int GetChaserProfileAttackType(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Type);
}

int GetChaserProfileAttackDisappear(int iChaserProfileIndex,int iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Disappear);
}

int GetChaserProfileAttackRepeat(int iChaserProfileIndex,int iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Repeat);
}

float GetChaserProfileAttackDamage(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Damage));
}

float GetChaserProfileAttackLifeStealDuration(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_LifeStealDuration));
}

float GetChaserProfileAttackProjectileDamage(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_ProjectileDamage));
}

float GetChaserProfileAttackProjectileSpeed(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_ProjectileSpeed));
}

float GetChaserProfileAttackProjectileRadius(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_ProjectileRadius));
}

bool GetChaserProfileAttackCritProjectiles(int iChaserProfileIndex,int iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<bool>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_ProjectileCrits));
}

int GetChaserProfileAttackBulletCount(int iChaserProfileIndex,int iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_BulletCount);
}

float GetChaserProfileAttackBulletDamage(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_BulletDamage));
}

float GetChaserProfileAttackBulletSpread(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_BulletSpread));
}

float GetChaserProfileAttackDamageVsProps(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_DamageVsProps));
}

float GetChaserProfileAttackDamageForce(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_DamageForce));
}

int GetChaserProfileAttackDamageType(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_DamageType);
}

float GetChaserProfileAttackDamageDelay(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_DamageDelay));
}

float GetChaserProfileAttackRange(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Range));
}

float GetChaserProfileAttackDuration(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Duration));
}

float GetChaserProfileAttackSpread(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Spread));
}

float GetChaserProfileAttackBeginRange(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_BeginRange));
}

float GetChaserProfileAttackBeginFOV(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_BeginFOV));
}

float GetChaserProfileAttackCooldown(int iChaserProfileIndex,int  iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));
	
	return view_as<float>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_Cooldown));
}

bool GetChaserProfileAttackLifeStealState(int iChaserProfileIndex,int iAttackIndex)
{
	Handle hAttacks = view_as<Handle>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_Attacks));

	return view_as<bool>(GetArrayCell(hAttacks, iAttackIndex, ChaserProfileAttackData_LifeStealEnabled));
}

bool GetChaserProfileEnableAdvancedDamageEffects(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AdvancedDamageEffectsEnabled));
}

bool GetChaserProfileEnableAdvancedDamageParticles(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AdvancedDamageEffectsParticles));
}

bool GetChaserProfileJarateState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableJarateAdvanced));
}

bool GetChaserProfileMilkState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableMilkAdvanced));
}

bool GetChaserProfileGasState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableGasAdvanced));
}

bool GetChaserProfileMarkState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableMarkAdvanced));
}

bool GetChaserProfileIgniteState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableIgniteAdvanced));
}

bool GetChaserProfileStunAttackState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableStunAdvanced));
}

bool GetChaserProfileBleedState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableBleedAdvanced));
}

bool GetChaserProfileEletricAttackState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableEletricAdvanced));
}

bool GetChaserProfileSmiteState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableSmiteAdvanced));
}

bool GetChaserProfileCloakState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CanCloak));
}

bool GetChaserProfileProjectileState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileEnable));
}

bool GetChaserProfileCriticalRockets(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CriticlaRockets));
}

bool GetChaserProfileGestureShoot(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_UseShootGesture));
}

bool GetChaserProfileProjectileAmmoState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileClipEnable));
}

bool GetChaserProfileChargeUpProjectilesState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_UseChargeUpProjectiles));
}

int GetChaserProfileProjectileType(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileType);
}

int GetChaserProfileProjectileLoadedAmmo(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileClipEasy);
		case Difficulty_Hard: return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileClipHard);
		case Difficulty_Insane: return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileClipInsane);
		case Difficulty_Nightmare: return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileClipNightmare);
	}
	
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileClipNormal);
}

float GetChaserProfileProjectileAmmoReloadTime(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileReloadTimeEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileReloadTimeHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileReloadTimeInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileReloadTimeNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileReloadTimeApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileReloadTimeNormal));
}

float GetChaserProfileProjectileChargeUpTime(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileChargeUpEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileChargeUpHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileChargeUpInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileChargeUpNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileChargeUpApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ProjectileChargeUpNormal));
}

bool GetChaserProfileDamageParticleState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_EnableDamageParticles));
}

float GetChaserProfileDamageParticleVolume(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_DamageParticleVolume));
}

int GetChaserProfileDamageParticlePitch(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_DamageParticlePitch);
}

bool GetChaserProfileStunState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CanBeStunned));
}

float GetChaserProfileStunDuration(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunDuration));
}

float GetChaserProfileStunCooldown(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunCooldown));
}

bool GetChaserProfileStunFlashlightState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CanBeStunnedByFlashlight));
}

float GetChaserProfileStunFlashlightDamage(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunFlashlightDamage));
}

float GetChaserProfileStunHealth(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunHealth));
}

float GetChaserProfileStunHealthPerPlayer(int iChaserProfileIndex)
{
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_StunHealthPerPlayer));
}

bool GetChaserProfileKeyDrop(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_KeyDrop));
}

float GetChaserProfileCloakCooldown(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakCooldownEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakCooldownHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakCooldownInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakCooldownNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakCooldownApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakCooldownNormal));
}

float GetChaserProfileCloakRange(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakRangeEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakRangeHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakRangeInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakRangeNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakRangeApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_CloakRangeNormal));
}

bool GetChaserProfileShockwaveState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwavesEnable));
}

float GetChaserProfileShockwaveHeight(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveHeightEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveHeightHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveHeightInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveHeightNightmare));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveHeightNormal));
}

float GetChaserProfileShockwaveRange(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveRangeEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveRangeHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveRangeInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveRangeNightmare));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveRangeNormal));
}

float GetChaserProfileShockwaveDrain(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveDrainEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveDrainHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveDrainInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveDrainNightmare));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveDrainNormal));
}

float GetChaserProfileShockwaveForce(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveForceEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveForceHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveForceInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveForceNightmare));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveForceNormal));
}

bool GetChaserProfileShockwaveStunState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunEnabled));
}

float GetChaserProfileShockwaveStunDuration(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunDurationEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunDurationHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunDurationInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunDurationNightmare));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunDurationNormal));
}

float GetChaserProfileShockwaveStunSlowdown(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunSlowdownEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunSlowdownHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunSlowdownInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunSlowdownNightmare));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveStunSlowdownNormal));
}

int GetChaserProfileShockwaveAttackIndexes(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_ShockwaveAttackIndexes);
}

bool GetChaserProfileTrapState(int iChaserProfileIndex)
{
	return view_as<bool>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapsEnabled));
}

int GetChaserProfileTrapType(int iChaserProfileIndex)
{
	return GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapType);
}

float GetChaserProfileTrapSpawnCooldown(int iChaserProfileIndex,int iDifficulty)
{
	switch (iDifficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapSpawnCooldownEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapSpawnCooldownHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapSpawnCooldownInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapSpawnCooldownNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapSpawnCooldownApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_TrapSpawnCooldownNormal));
}

stock float GetChaserProfileAwarenessIncreaseRate(int iChaserProfileIndex,int difficulty)
{
	switch (difficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessIncreaseRateEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessIncreaseRateHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessIncreaseRateInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessIncreaseRateNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessIncreaseRateApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessIncreaseRateNormal));
}

stock float GetChaserProfileAwarenessDecreaseRate(int iChaserProfileIndex,int difficulty)
{
	switch (difficulty)
	{
		case Difficulty_Easy: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessDecreaseRateEasy));
		case Difficulty_Hard: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessDecreaseRateHard));
		case Difficulty_Insane: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessDecreaseRateInsane));
		case Difficulty_Nightmare: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessDecreaseRateNightmare));
		case Difficulty_Apollyon: return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessDecreaseRateApollyon));
	}
	
	return view_as<float>(GetArrayCell(g_hChaserProfileData, iChaserProfileIndex, ChaserProfileData_AwarenessDecreaseRateNormal));
}

stock bool GetProfileAnimation(const char[] sProfile, int iAnimationSection, char[] sAnimation, int iLenght, float &flPlaybackRate, int difficulty, int iAnimationIndex = -1, float &flFootstepInterval)
{
	KvRewind(g_hConfig);
	KvJumpToKey(g_hConfig, sProfile);
	char sAnimationSection[128], sKeyAnimationName[256], sKeyAnimationPlayBackRate[128], sKeyAnimationFootstepInt[128];
	switch (iAnimationSection)
	{
		case ChaserAnimation_IdleAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "idle");
			if (view_as<bool>(GetProfileNum(sProfile,"difficulty_affects_animations",0)))
			{
				switch (difficulty)
				{
					case Difficulty_Easy:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_idle_easy");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_idle_easy_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_idle_easy_footstepinterval");
					}
					case Difficulty_Normal:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_idle");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_idle_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_idle_footstepinterval");
					}
					case Difficulty_Hard:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_idle_hard");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_idle_hard_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_idle_hard_footstepinterval");
					}
					case Difficulty_Insane:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_idle_insane");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_idle_insane_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_idle_insane_footstepinterval");
					}
					case Difficulty_Nightmare:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_idle_nightmare");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_idle_nightmare_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_idle_nightmare_footstepinterval");
					}
					case Difficulty_Apollyon:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_idle_apollyon");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_idle_apollyon_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_idle_apollyon_footstepinterval");
					}
				}
			}
			else
			{
				strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_idle");
				strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_idle_playbackrate");
				strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_idle_footstepinterval");
			}
		}
		case ChaserAnimation_WalkAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "walk");
			if (view_as<bool>(GetProfileNum(sProfile,"difficulty_affects_animations",0)))
			{
				switch (difficulty)
				{
					case Difficulty_Easy:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walk_easy");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walk_easy_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_easy_footstepinterval");
					}
					case Difficulty_Normal:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walk");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walk_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_footstepinterval");
					}
					case Difficulty_Hard:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walk_hard");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walk_hard_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_hard_footstepinterval");
					}
					case Difficulty_Insane:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walk_insane");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walk_insane_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_insane_footstepinterval");
					}
					case Difficulty_Nightmare:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walk_nightmare");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walk_nightmare_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_nightmare_footstepinterval");
					}
					case Difficulty_Apollyon:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walk_apollyon");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walk_apollyon_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_apollyon_footstepinterval");
					}
				}
			}
			else
			{
				strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walk");
				strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walk_playbackrate");
				strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_footstepinterval");
			}
		}
		case ChaserAnimation_WalkAlertAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "walkalert");
			if (view_as<bool>(GetProfileNum(sProfile,"difficulty_affects_animations",0)))
			{
				switch (difficulty)
				{
					case Difficulty_Easy:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walkalert_easy");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walkalert_easy_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_easy_footstepinterval");
					}
					case Difficulty_Normal:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walkalert");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walkalert_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_footstepinterval");
					}
					case Difficulty_Hard:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walkalert_hard");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walkalert_hard_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_hard_footstepinterval");
					}
					case Difficulty_Insane:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walkalert_insane");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walkalert_insane_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_insane_footstepinterval");
					}
					case Difficulty_Nightmare:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walkalert_nightmare");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walkalert_nightmare_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_nightmare_footstepinterval");
					}
					case Difficulty_Apollyon:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walkalert_apollyon");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walkalert_apollyon_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_apollyon_footstepinterval");
					}
				}
			}
			else
			{
				strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_walkalert");
				strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_walkalert_playbackrate");
				strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_walk_footstepinterval");
			}
		}
		case ChaserAnimation_AttackAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "attack");
			strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_attack");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_attack_playbackrate");
			strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_attack_footstepinterval");
		}
		case ChaserAnimation_ShootAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "shoot");
			strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_shoot");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_shoot_playbackrate");
			strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_attack_footstepinterval");
		}
		case ChaserAnimation_RunAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "run");
			if (view_as<bool>(GetProfileNum(sProfile,"difficulty_affects_animations",0)))
			{
				switch (difficulty)
				{
					case Difficulty_Easy:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_run_easy");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_run_easy_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_run_easy_footstepinterval");
					}
					case Difficulty_Normal:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_run");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_run_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_run_footstepinterval");
					}
					case Difficulty_Hard:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_run_hard");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_run_hard_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_run_hard_footstepinterval");
					}
					case Difficulty_Insane:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_run_insane");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_run_insane_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_run_insane_footstepinterval");
					}
					case Difficulty_Nightmare:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_run_nightmare");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_run_nightmare_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_run_nightmare_footstepinterval");
					}
					case Difficulty_Apollyon:
					{
						strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_run_apollyon");
						strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_run_apollyon_playbackrate");
						strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_run_apollyon_footstepinterval");
					}
				}
			}
			else
			{
				strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_run");
				strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_run_playbackrate");
				strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_run_footstepinterval");
			}
		}
		case ChaserAnimation_ChaseInitialAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "chaseinitial");
			strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_chaseinitial");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_chaseinitial_playbackrate");
		}
		case ChaserAnimation_RageAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "rage");
			strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_rage");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_rage_playbackrate");
		}
		case ChaserAnimation_StunAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "stun");
			strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_stun");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_stun_playbackrate");
			strcopy(sKeyAnimationFootstepInt, sizeof(sKeyAnimationFootstepInt), "animation_stun_footstepinterval");
		}
		case ChaserAnimation_DeathAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "death");
			strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_death");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_death_playbackrate");
		}
		case ChaserAnimation_JumpAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "jump");
			strcopy(sKeyAnimationName, sizeof(sKeyAnimationName), "animation_jump");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "animation_jump_playbackrate");
		}
	}
	
	if (KvJumpToKey(g_hConfig, "animations"))
	{
		if (KvJumpToKey(g_hConfig, sAnimationSection))
		{
			char sNum[3];
			if (iAnimationIndex == -1)
			{
				int iTotalAnimation;
				for (iAnimationIndex = 1; iAnimationIndex <= SF2_CHASER_BOSS_MAX_ATTACKS; iAnimationIndex++)
				{
					IntToString(iAnimationIndex, sNum, sizeof(sNum));
					if (KvJumpToKey(g_hConfig, sNum))
					{
						iTotalAnimation++;
						KvGoBack(g_hConfig);
					}
				}
				iAnimationIndex = GetRandomInt(1, iTotalAnimation);
			}
			IntToString(iAnimationIndex, sNum, sizeof(sNum));
			if (!KvJumpToKey(g_hConfig, sNum))
			{
				return false;
			}
		}
		else
			return false;
	}
	KvGetString(g_hConfig, sKeyAnimationName, sAnimation, iLenght);
	flPlaybackRate = KvGetFloat(g_hConfig, sKeyAnimationPlayBackRate, 1.0);
	flFootstepInterval = KvGetFloat(g_hConfig, sKeyAnimationFootstepInt, 0.0);
	return true;
}

stock bool GetProfileBlendAnimationSpeed(const char[] sProfile, int iAnimationSection, float &flPlaybackRate, int iAnimationIndex = -1)
{
	KvRewind(g_hConfig);
	KvJumpToKey(g_hConfig, sProfile);
	char sAnimationSection[20], sKeyAnimationPlayBackRate[65];
	switch (iAnimationSection)
	{
		case ChaserAnimation_IdleAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "idle");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_idle_playbackrate");
		}
		case ChaserAnimation_WalkAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "walk");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_walk_playbackrate");
		}
		case ChaserAnimation_AttackAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "attack");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_attack_playbackrate");
		}
		case ChaserAnimation_ShootAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "shoot");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_shoot_playbackrate");
		}
		case ChaserAnimation_RunAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "run");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_run_playbackrate");
		}
		case ChaserAnimation_StunAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "stun");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_stun_playbackrate");
		}
		case ChaserAnimation_DeathAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "death");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_death_playbackrate");
		}
		case ChaserAnimation_JumpAnimations:
		{
			strcopy(sAnimationSection, sizeof(sAnimationSection), "jump");
			strcopy(sKeyAnimationPlayBackRate, sizeof(sKeyAnimationPlayBackRate), "blend_animation_jump_playbackrate");
		}
	}
	
	if (KvJumpToKey(g_hConfig, "animations"))
	{
		if (KvJumpToKey(g_hConfig, sAnimationSection))
		{
			char sNum[3];
			if (iAnimationIndex == -1)
			{
				int iTotalAnimation;
				for (iAnimationIndex = 1; iAnimationIndex <= SF2_CHASER_BOSS_MAX_ATTACKS; iAnimationIndex++)
				{
					IntToString(iAnimationIndex, sNum, sizeof(sNum));
					if (KvJumpToKey(g_hConfig, sNum))
					{
						iTotalAnimation++;
						KvGoBack(g_hConfig);
					}
				}
				iAnimationIndex = GetRandomInt(1, iTotalAnimation);
			}
			IntToString(iAnimationIndex, sNum, sizeof(sNum));
			if (!KvJumpToKey(g_hConfig, sNum))
			{
				return false;
			}
		}
		else
			return false;
	}
	flPlaybackRate = KvGetFloat(g_hConfig, sKeyAnimationPlayBackRate, 1.0);
	return true;
}

stock int GetProfileAttackNum(const char[] sProfile, const char[] keyValue,int defaultValue=0, const int iAttackIndex)
{
	if (!IsProfileValid(sProfile)) return defaultValue;
	
	char sKey[4];
	KvRewind(g_hConfig);
	KvJumpToKey(g_hConfig, sProfile);
	KvJumpToKey(g_hConfig, "attacks");
	IntToString(iAttackIndex, sKey, sizeof(sKey));
	KvJumpToKey(g_hConfig, sKey);
	return KvGetNum(g_hConfig, keyValue, defaultValue);
}

stock bool GetProfileAttackString(const char[] sProfile, const char[] keyValue, char[] sBuffer, int iLenght, const char[] sDefaultValue = "", const int iAttackIndex)
{
	if (!IsProfileValid(sProfile)) return false;
	
	char sKey[4];
	KvRewind(g_hConfig);
	KvJumpToKey(g_hConfig, sProfile);
	KvJumpToKey(g_hConfig, "attacks");
	IntToString(iAttackIndex, sKey, sizeof(sKey));
	KvJumpToKey(g_hConfig, sKey);
	KvGetString(g_hConfig, keyValue, sBuffer, iLenght, sDefaultValue);
	return true;
}

stock bool GetProfileAttackVector(const char[] sProfile, const char[] keyValue, float buffer[3], const float defaultValue[3]=NULL_VECTOR, const int iAttackIndex)
{
	for (int i = 0; i < 3; i++) buffer[i] = defaultValue[i];
	
	if (!IsProfileValid(sProfile)) return false;
	
	char sKey[4];
	KvRewind(g_hConfig);
	KvJumpToKey(g_hConfig, sProfile);
	KvJumpToKey(g_hConfig, "attacks");
	IntToString(iAttackIndex, sKey, sizeof(sKey));
	KvJumpToKey(g_hConfig, sKey);
	KvGetVector(g_hConfig, keyValue, buffer, defaultValue);
	return true;
}