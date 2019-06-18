# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.core.serializers.json import DjangoJSONEncoder

class Mt5Accounts(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    currencydigits = models.PositiveIntegerField(db_column='CurrencyDigits')  # Field name made lowercase.
    balance = models.FloatField(db_column='Balance')  # Field name made lowercase.
    credit = models.FloatField(db_column='Credit')  # Field name made lowercase.
    margin = models.FloatField(db_column='Margin')  # Field name made lowercase.
    marginfree = models.FloatField(db_column='MarginFree')  # Field name made lowercase.
    marginlevel = models.FloatField(db_column='MarginLevel')  # Field name made lowercase.
    marginleverage = models.PositiveIntegerField(db_column='MarginLeverage')  # Field name made lowercase.
    margininitial = models.FloatField(db_column='MarginInitial')  # Field name made lowercase.
    marginmaintenance = models.FloatField(db_column='MarginMaintenance')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    storage = models.FloatField(db_column='Storage')  # Field name made lowercase.
    commission = models.FloatField(db_column='Commission')  # Field name made lowercase.
    floating = models.FloatField(db_column='Floating')  # Field name made lowercase.
    equity = models.FloatField(db_column='Equity')  # Field name made lowercase.
    assets = models.FloatField(db_column='Assets')  # Field name made lowercase.
    liabilities = models.FloatField(db_column='Liabilities')  # Field name made lowercase.
    blockedcommission = models.FloatField(db_column='BlockedCommission')  # Field name made lowercase.
    blockedprofit = models.FloatField(db_column='BlockedProfit')  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_accounts'


class Mt5AntiddosServers(models.Model):
    server_id = models.BigIntegerField(db_column='Server_ID', primary_key=True)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    server = models.BigIntegerField(db_column='Server')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_antiddos_servers'


class Mt5AntiddosSources(models.Model):
    source_id = models.BigIntegerField(db_column='Source_ID', primary_key=True)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    from_field = models.CharField(db_column='From', max_length=64)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    to = models.CharField(db_column='To', max_length=64)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_antiddos_sources'


class Mt5Commissions(models.Model):
    commission_id = models.BigIntegerField(db_column='Commission_ID', primary_key=True)  # Field name made lowercase.
    group_id = models.BigIntegerField(db_column='Group_ID')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=64)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=64)  # Field name made lowercase.
    path = models.CharField(db_column='Path', max_length=128)  # Field name made lowercase.
    mode = models.PositiveIntegerField(db_column='Mode')  # Field name made lowercase.
    moderange = models.PositiveIntegerField(db_column='ModeRange')  # Field name made lowercase.
    modecharge = models.PositiveIntegerField(db_column='ModeCharge')  # Field name made lowercase.
    turnovercurrency = models.CharField(db_column='TurnoverCurrency', max_length=16)  # Field name made lowercase.
    modeentry = models.PositiveIntegerField(db_column='ModeEntry')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_commissions'


class Mt5CommissionsTiers(models.Model):
    tier_id = models.BigIntegerField(db_column='Tier_ID', primary_key=True)  # Field name made lowercase.
    commission_id = models.BigIntegerField(db_column='Commission_ID')  # Field name made lowercase.
    mode = models.PositiveIntegerField(db_column='Mode')  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    value = models.FloatField(db_column='Value')  # Field name made lowercase.
    rangefrom = models.FloatField(db_column='RangeFrom')  # Field name made lowercase.
    rangeto = models.FloatField(db_column='RangeTo')  # Field name made lowercase.
    minimal = models.FloatField(db_column='Minimal')  # Field name made lowercase.
    currency = models.CharField(db_column='Currency', max_length=16)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_commissions_tiers'


class Mt5Daily(models.Model):
    datetime = models.BigIntegerField(db_column='Datetime', primary_key=True)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    datetimeprev = models.BigIntegerField(db_column='DatetimePrev')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=128)  # Field name made lowercase.
    group = models.CharField(db_column='Group', max_length=64)  # Field name made lowercase.
    currency = models.CharField(db_column='Currency', max_length=32)  # Field name made lowercase.
    company = models.CharField(db_column='Company', max_length=64)  # Field name made lowercase.
    email = models.CharField(db_column='EMail', max_length=64)  # Field name made lowercase.
    balance = models.FloatField(db_column='Balance')  # Field name made lowercase.
    credit = models.FloatField(db_column='Credit')  # Field name made lowercase.
    interestrate = models.FloatField(db_column='InterestRate')  # Field name made lowercase.
    commissiondaily = models.FloatField(db_column='CommissionDaily')  # Field name made lowercase.
    commissionmonthly = models.FloatField(db_column='CommissionMonthly')  # Field name made lowercase.
    agentdaily = models.FloatField(db_column='AgentDaily')  # Field name made lowercase.
    agentmonthly = models.FloatField(db_column='AgentMonthly')  # Field name made lowercase.
    balanceprevday = models.FloatField(db_column='BalancePrevDay')  # Field name made lowercase.
    balanceprevmonth = models.FloatField(db_column='BalancePrevMonth')  # Field name made lowercase.
    equityprevday = models.FloatField(db_column='EquityPrevDay')  # Field name made lowercase.
    equityprevmonth = models.FloatField(db_column='EquityPrevMonth')  # Field name made lowercase.
    margin = models.FloatField(db_column='Margin')  # Field name made lowercase.
    marginfree = models.FloatField(db_column='MarginFree')  # Field name made lowercase.
    marginlevel = models.FloatField(db_column='MarginLevel')  # Field name made lowercase.
    marginleverage = models.PositiveIntegerField(db_column='MarginLeverage')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    profitstorage = models.FloatField(db_column='ProfitStorage')  # Field name made lowercase.
    profitcommission = models.FloatField(db_column='ProfitCommission')  # Field name made lowercase.
    profitequity = models.FloatField(db_column='ProfitEquity')  # Field name made lowercase.
    dailyprofit = models.FloatField(db_column='DailyProfit')  # Field name made lowercase.
    dailybalance = models.FloatField(db_column='DailyBalance')  # Field name made lowercase.
    dailycredit = models.FloatField(db_column='DailyCredit')  # Field name made lowercase.
    dailycharge = models.FloatField(db_column='DailyCharge')  # Field name made lowercase.
    dailycorrection = models.FloatField(db_column='DailyCorrection')  # Field name made lowercase.
    dailybonus = models.FloatField(db_column='DailyBonus')  # Field name made lowercase.
    dailystorage = models.FloatField(db_column='DailyStorage')  # Field name made lowercase.
    dailycomminstant = models.FloatField(db_column='DailyCommInstant')  # Field name made lowercase.
    dailycommround = models.FloatField(db_column='DailyCommRound')  # Field name made lowercase.
    dailyagent = models.FloatField(db_column='DailyAgent')  # Field name made lowercase.
    dailyinterest = models.FloatField(db_column='DailyInterest')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_daily'
        unique_together = (('datetime', 'login'),)


class Mt5Daily2018(models.Model):
    datetime = models.BigIntegerField(db_column='Datetime', primary_key=True)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    datetimeprev = models.BigIntegerField(db_column='DatetimePrev')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=128)  # Field name made lowercase.
    group = models.CharField(db_column='Group', max_length=64)  # Field name made lowercase.
    currency = models.CharField(db_column='Currency', max_length=32)  # Field name made lowercase.
    company = models.CharField(db_column='Company', max_length=64)  # Field name made lowercase.
    email = models.CharField(db_column='EMail', max_length=64)  # Field name made lowercase.
    balance = models.FloatField(db_column='Balance')  # Field name made lowercase.
    credit = models.FloatField(db_column='Credit')  # Field name made lowercase.
    interestrate = models.FloatField(db_column='InterestRate')  # Field name made lowercase.
    commissiondaily = models.FloatField(db_column='CommissionDaily')  # Field name made lowercase.
    commissionmonthly = models.FloatField(db_column='CommissionMonthly')  # Field name made lowercase.
    agentdaily = models.FloatField(db_column='AgentDaily')  # Field name made lowercase.
    agentmonthly = models.FloatField(db_column='AgentMonthly')  # Field name made lowercase.
    balanceprevday = models.FloatField(db_column='BalancePrevDay')  # Field name made lowercase.
    balanceprevmonth = models.FloatField(db_column='BalancePrevMonth')  # Field name made lowercase.
    equityprevday = models.FloatField(db_column='EquityPrevDay')  # Field name made lowercase.
    equityprevmonth = models.FloatField(db_column='EquityPrevMonth')  # Field name made lowercase.
    margin = models.FloatField(db_column='Margin')  # Field name made lowercase.
    marginfree = models.FloatField(db_column='MarginFree')  # Field name made lowercase.
    marginlevel = models.FloatField(db_column='MarginLevel')  # Field name made lowercase.
    marginleverage = models.PositiveIntegerField(db_column='MarginLeverage')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    profitstorage = models.FloatField(db_column='ProfitStorage')  # Field name made lowercase.
    profitcommission = models.FloatField(db_column='ProfitCommission')  # Field name made lowercase.
    profitequity = models.FloatField(db_column='ProfitEquity')  # Field name made lowercase.
    dailyprofit = models.FloatField(db_column='DailyProfit')  # Field name made lowercase.
    dailybalance = models.FloatField(db_column='DailyBalance')  # Field name made lowercase.
    dailycredit = models.FloatField(db_column='DailyCredit')  # Field name made lowercase.
    dailycharge = models.FloatField(db_column='DailyCharge')  # Field name made lowercase.
    dailycorrection = models.FloatField(db_column='DailyCorrection')  # Field name made lowercase.
    dailybonus = models.FloatField(db_column='DailyBonus')  # Field name made lowercase.
    dailystorage = models.FloatField(db_column='DailyStorage')  # Field name made lowercase.
    dailycomminstant = models.FloatField(db_column='DailyCommInstant')  # Field name made lowercase.
    dailycommround = models.FloatField(db_column='DailyCommRound')  # Field name made lowercase.
    dailyagent = models.FloatField(db_column='DailyAgent')  # Field name made lowercase.
    dailyinterest = models.FloatField(db_column='DailyInterest')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_daily_2018'
        unique_together = (('datetime', 'login'),)


class Mt5Daily2019(models.Model):
    datetime = models.BigIntegerField(db_column='Datetime', primary_key=True)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    datetimeprev = models.BigIntegerField(db_column='DatetimePrev')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=128)  # Field name made lowercase.
    group = models.CharField(db_column='Group', max_length=64)  # Field name made lowercase.
    currency = models.CharField(db_column='Currency', max_length=32)  # Field name made lowercase.
    company = models.CharField(db_column='Company', max_length=64)  # Field name made lowercase.
    email = models.CharField(db_column='EMail', max_length=64)  # Field name made lowercase.
    balance = models.FloatField(db_column='Balance')  # Field name made lowercase.
    credit = models.FloatField(db_column='Credit')  # Field name made lowercase.
    interestrate = models.FloatField(db_column='InterestRate')  # Field name made lowercase.
    commissiondaily = models.FloatField(db_column='CommissionDaily')  # Field name made lowercase.
    commissionmonthly = models.FloatField(db_column='CommissionMonthly')  # Field name made lowercase.
    agentdaily = models.FloatField(db_column='AgentDaily')  # Field name made lowercase.
    agentmonthly = models.FloatField(db_column='AgentMonthly')  # Field name made lowercase.
    balanceprevday = models.FloatField(db_column='BalancePrevDay')  # Field name made lowercase.
    balanceprevmonth = models.FloatField(db_column='BalancePrevMonth')  # Field name made lowercase.
    equityprevday = models.FloatField(db_column='EquityPrevDay')  # Field name made lowercase.
    equityprevmonth = models.FloatField(db_column='EquityPrevMonth')  # Field name made lowercase.
    margin = models.FloatField(db_column='Margin')  # Field name made lowercase.
    marginfree = models.FloatField(db_column='MarginFree')  # Field name made lowercase.
    marginlevel = models.FloatField(db_column='MarginLevel')  # Field name made lowercase.
    marginleverage = models.PositiveIntegerField(db_column='MarginLeverage')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    profitstorage = models.FloatField(db_column='ProfitStorage')  # Field name made lowercase.
    profitcommission = models.FloatField(db_column='ProfitCommission')  # Field name made lowercase.
    profitequity = models.FloatField(db_column='ProfitEquity')  # Field name made lowercase.
    dailyprofit = models.FloatField(db_column='DailyProfit')  # Field name made lowercase.
    dailybalance = models.FloatField(db_column='DailyBalance')  # Field name made lowercase.
    dailycredit = models.FloatField(db_column='DailyCredit')  # Field name made lowercase.
    dailycharge = models.FloatField(db_column='DailyCharge')  # Field name made lowercase.
    dailycorrection = models.FloatField(db_column='DailyCorrection')  # Field name made lowercase.
    dailybonus = models.FloatField(db_column='DailyBonus')  # Field name made lowercase.
    dailystorage = models.FloatField(db_column='DailyStorage')  # Field name made lowercase.
    dailycomminstant = models.FloatField(db_column='DailyCommInstant')  # Field name made lowercase.
    dailycommround = models.FloatField(db_column='DailyCommRound')  # Field name made lowercase.
    dailyagent = models.FloatField(db_column='DailyAgent')  # Field name made lowercase.
    dailyinterest = models.FloatField(db_column='DailyInterest')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_daily_2019'
        unique_together = (('datetime', 'login'),)


class Mt5Deals(models.Model):
    deal = models.BigIntegerField(db_column='Deal', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    externalid = models.CharField(db_column='ExternalID', max_length=32)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    dealer = models.BigIntegerField(db_column='Dealer')  # Field name made lowercase.
    order = models.BigIntegerField(db_column='Order')  # Field name made lowercase.
    action = models.PositiveIntegerField(db_column='Action')  # Field name made lowercase.
    entry = models.PositiveIntegerField(db_column='Entry')  # Field name made lowercase.
    reason = models.PositiveIntegerField(db_column='Reason')  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    digitscurrency = models.PositiveIntegerField(db_column='DigitsCurrency')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    time = models.DateTimeField(db_column='Time')  # Field name made lowercase.
    timemsc = models.DateTimeField(db_column='TimeMsc')  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.
    volumeext = models.BigIntegerField(db_column='VolumeExt')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    storage = models.FloatField(db_column='Storage')  # Field name made lowercase.
    commission = models.FloatField(db_column='Commission')  # Field name made lowercase.
    rateprofit = models.FloatField(db_column='RateProfit')  # Field name made lowercase.
    ratemargin = models.FloatField(db_column='RateMargin')  # Field name made lowercase.
    expertid = models.BigIntegerField(db_column='ExpertID')  # Field name made lowercase.
    positionid = models.BigIntegerField(db_column='PositionID')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.
    profitraw = models.FloatField(db_column='ProfitRaw')  # Field name made lowercase.
    priceposition = models.FloatField(db_column='PricePosition')  # Field name made lowercase.
    volumeclosedext = models.BigIntegerField(db_column='VolumeClosedExt')  # Field name made lowercase.
    tickvalue = models.FloatField(db_column='TickValue')  # Field name made lowercase.
    ticksize = models.FloatField(db_column='TickSize')  # Field name made lowercase.
    flags = models.BigIntegerField(db_column='Flags')  # Field name made lowercase.
    gateway = models.CharField(db_column='Gateway', max_length=16)  # Field name made lowercase.
    pricegateway = models.FloatField(db_column='PriceGateway')  # Field name made lowercase.
    modifyflags = models.PositiveIntegerField(db_column='ModifyFlags')  # Field name made lowercase.
    volume = models.BigIntegerField(db_column='Volume')  # Field name made lowercase.
    volumeclosed = models.BigIntegerField(db_column='VolumeClosed')  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_deals'


class Mt5Deals2018(models.Model):
    deal = models.BigIntegerField(db_column='Deal', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    externalid = models.CharField(db_column='ExternalID', max_length=32)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    dealer = models.BigIntegerField(db_column='Dealer')  # Field name made lowercase.
    order = models.BigIntegerField(db_column='Order')  # Field name made lowercase.
    action = models.PositiveIntegerField(db_column='Action')  # Field name made lowercase.
    entry = models.PositiveIntegerField(db_column='Entry')  # Field name made lowercase.
    reason = models.PositiveIntegerField(db_column='Reason')  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    digitscurrency = models.PositiveIntegerField(db_column='DigitsCurrency')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    time = models.DateTimeField(db_column='Time')  # Field name made lowercase.
    timemsc = models.DateTimeField(db_column='TimeMsc')  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.
    volumeext = models.BigIntegerField(db_column='VolumeExt')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    storage = models.FloatField(db_column='Storage')  # Field name made lowercase.
    commission = models.FloatField(db_column='Commission')  # Field name made lowercase.
    rateprofit = models.FloatField(db_column='RateProfit')  # Field name made lowercase.
    ratemargin = models.FloatField(db_column='RateMargin')  # Field name made lowercase.
    expertid = models.BigIntegerField(db_column='ExpertID')  # Field name made lowercase.
    positionid = models.BigIntegerField(db_column='PositionID')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.
    profitraw = models.FloatField(db_column='ProfitRaw')  # Field name made lowercase.
    priceposition = models.FloatField(db_column='PricePosition')  # Field name made lowercase.
    volumeclosedext = models.BigIntegerField(db_column='VolumeClosedExt')  # Field name made lowercase.
    tickvalue = models.FloatField(db_column='TickValue')  # Field name made lowercase.
    ticksize = models.FloatField(db_column='TickSize')  # Field name made lowercase.
    flags = models.BigIntegerField(db_column='Flags')  # Field name made lowercase.
    gateway = models.CharField(db_column='Gateway', max_length=16)  # Field name made lowercase.
    pricegateway = models.FloatField(db_column='PriceGateway')  # Field name made lowercase.
    modifyflags = models.PositiveIntegerField(db_column='ModifyFlags')  # Field name made lowercase.
    volume = models.BigIntegerField(db_column='Volume')  # Field name made lowercase.
    volumeclosed = models.BigIntegerField(db_column='VolumeClosed')  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_deals_2018'


class Mt5Deals2019(models.Model):
    deal = models.BigIntegerField(db_column='Deal', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    externalid = models.CharField(db_column='ExternalID', max_length=32)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    dealer = models.BigIntegerField(db_column='Dealer')  # Field name made lowercase.
    order = models.BigIntegerField(db_column='Order')  # Field name made lowercase.
    action = models.PositiveIntegerField(db_column='Action')  # Field name made lowercase.
    entry = models.PositiveIntegerField(db_column='Entry')  # Field name made lowercase.
    reason = models.PositiveIntegerField(db_column='Reason')  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    digitscurrency = models.PositiveIntegerField(db_column='DigitsCurrency')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    time = models.DateTimeField(db_column='Time')  # Field name made lowercase.
    timemsc = models.DateTimeField(db_column='TimeMsc')  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    price = models.FloatField(db_column='Price')  # Field name made lowercase.
    volumeext = models.BigIntegerField(db_column='VolumeExt')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    storage = models.FloatField(db_column='Storage')  # Field name made lowercase.
    commission = models.FloatField(db_column='Commission')  # Field name made lowercase.
    rateprofit = models.FloatField(db_column='RateProfit')  # Field name made lowercase.
    ratemargin = models.FloatField(db_column='RateMargin')  # Field name made lowercase.
    expertid = models.BigIntegerField(db_column='ExpertID')  # Field name made lowercase.
    positionid = models.BigIntegerField(db_column='PositionID')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.
    profitraw = models.FloatField(db_column='ProfitRaw')  # Field name made lowercase.
    priceposition = models.FloatField(db_column='PricePosition')  # Field name made lowercase.
    volumeclosedext = models.BigIntegerField(db_column='VolumeClosedExt')  # Field name made lowercase.
    tickvalue = models.FloatField(db_column='TickValue')  # Field name made lowercase.
    ticksize = models.FloatField(db_column='TickSize')  # Field name made lowercase.
    flags = models.BigIntegerField(db_column='Flags')  # Field name made lowercase.
    gateway = models.CharField(db_column='Gateway', max_length=16)  # Field name made lowercase.
    pricegateway = models.FloatField(db_column='PriceGateway')  # Field name made lowercase.
    modifyflags = models.PositiveIntegerField(db_column='ModifyFlags')  # Field name made lowercase.
    volume = models.BigIntegerField(db_column='Volume')  # Field name made lowercase.
    volumeclosed = models.BigIntegerField(db_column='VolumeClosed')  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_deals_2019'


class Mt5FeederParams(models.Model):
    param_id = models.BigIntegerField(db_column='Param_ID', primary_key=True)  # Field name made lowercase.
    feeder = models.CharField(db_column='Feeder', max_length=64)  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=64)  # Field name made lowercase.
    value = models.CharField(db_column='Value', max_length=256)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_feeder_params'


class Mt5FeederTranslates(models.Model):
    symbol = models.CharField(db_column='Symbol', primary_key=True, max_length=128)  # Field name made lowercase.
    feeder = models.CharField(db_column='Feeder', max_length=64)  # Field name made lowercase.
    source = models.CharField(db_column='Source', max_length=128)  # Field name made lowercase.
    bidmarkup = models.IntegerField(db_column='BidMarkup')  # Field name made lowercase.
    askmarkup = models.IntegerField(db_column='AskMarkup')  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_feeder_translates'
        unique_together = (('symbol', 'feeder'),)


class Mt5Feeders(models.Model):
    feeder = models.CharField(db_column='Feeder', primary_key=True, max_length=64)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    module = models.CharField(db_column='Module', max_length=256)  # Field name made lowercase.
    gatewayserver = models.CharField(db_column='GatewayServer', max_length=128)  # Field name made lowercase.
    feedserver = models.CharField(db_column='FeedServer', max_length=128)  # Field name made lowercase.
    enable = models.IntegerField(db_column='Enable')  # Field name made lowercase.
    mode = models.IntegerField(db_column='Mode')  # Field name made lowercase.
    timeout = models.PositiveIntegerField(db_column='Timeout')  # Field name made lowercase.
    timeoutreconnect = models.PositiveIntegerField(db_column='TimeoutReconnect')  # Field name made lowercase.
    timeoutsleep = models.PositiveIntegerField(db_column='TimeoutSleep')  # Field name made lowercase.
    attempssleep = models.PositiveIntegerField(db_column='AttempsSleep')  # Field name made lowercase.
    symbols = models.CharField(db_column='Symbols', max_length=512)  # Field name made lowercase.
    sysconnection = models.PositiveIntegerField(db_column='SysConnection')  # Field name made lowercase.
    syslasttime = models.DateTimeField(db_column='SysLastTime')  # Field name made lowercase.
    company = models.CharField(db_column='Company', max_length=256)  # Field name made lowercase.
    issuer = models.CharField(db_column='Issuer', max_length=256)  # Field name made lowercase.
    tickstatscount = models.PositiveIntegerField(db_column='TickStatsCount')  # Field name made lowercase.
    tickscount = models.PositiveIntegerField(db_column='TicksCount')  # Field name made lowercase.
    bookscount = models.PositiveIntegerField(db_column='BooksCount')  # Field name made lowercase.
    newscount = models.PositiveIntegerField(db_column='NewsCount')  # Field name made lowercase.
    bytesreceived = models.PositiveIntegerField(db_column='BytesReceived')  # Field name made lowercase.
    bytessent = models.PositiveIntegerField(db_column='BytesSent')  # Field name made lowercase.
    stateflags = models.PositiveIntegerField(db_column='StateFlags')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_feeders'


class Mt5Firewall(models.Model):
    ipfrom = models.CharField(db_column='IPFrom', primary_key=True, max_length=64)  # Field name made lowercase.
    ipto = models.CharField(db_column='IPTo', max_length=64)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    action = models.PositiveIntegerField(db_column='Action')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_firewall'
        unique_together = (('ipfrom', 'ipto'),)


class Mt5Groups(models.Model):
    group_id = models.BigIntegerField(db_column='Group_ID', primary_key=True)  # Field name made lowercase.
    group = models.CharField(db_column='Group', max_length=64)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    server = models.BigIntegerField(db_column='Server')  # Field name made lowercase.
    permissionsflags = models.BigIntegerField(db_column='PermissionsFlags')  # Field name made lowercase.
    authmode = models.PositiveIntegerField(db_column='AuthMode')  # Field name made lowercase.
    authpasswordmin = models.PositiveIntegerField(db_column='AuthPasswordMin')  # Field name made lowercase.
    authotpmode = models.PositiveIntegerField(db_column='AuthOTPMode')  # Field name made lowercase.
    company = models.CharField(db_column='Company', max_length=128)  # Field name made lowercase.
    companypage = models.CharField(db_column='CompanyPage', max_length=256)  # Field name made lowercase.
    companyemail = models.CharField(db_column='CompanyEmail', max_length=64)  # Field name made lowercase.
    companysupportpage = models.CharField(db_column='CompanySupportPage', max_length=256)  # Field name made lowercase.
    companysupportemail = models.CharField(db_column='CompanySupportEmail', max_length=64)  # Field name made lowercase.
    companycatalog = models.CharField(db_column='CompanyCatalog', max_length=64)  # Field name made lowercase.
    currency = models.CharField(db_column='Currency', max_length=32)  # Field name made lowercase.
    currencydigits = models.PositiveIntegerField(db_column='CurrencyDigits')  # Field name made lowercase.
    reportsmode = models.PositiveIntegerField(db_column='ReportsMode')  # Field name made lowercase.
    reportsflags = models.BigIntegerField(db_column='ReportsFlags')  # Field name made lowercase.
    newsmode = models.PositiveIntegerField(db_column='NewsMode')  # Field name made lowercase.
    newscategory = models.CharField(db_column='NewsCategory', max_length=64)  # Field name made lowercase.
    mailmode = models.PositiveIntegerField(db_column='MailMode')  # Field name made lowercase.
    tradeflags = models.BigIntegerField(db_column='TradeFlags')  # Field name made lowercase.
    transfermode = models.PositiveIntegerField(db_column='TransferMode')  # Field name made lowercase.
    tradeinterestrate = models.FloatField(db_column='TradeInterestrate')  # Field name made lowercase.
    tradevirtualcredit = models.FloatField(db_column='TradeVirtualCredit')  # Field name made lowercase.
    marginmode = models.PositiveIntegerField(db_column='MarginMode')  # Field name made lowercase.
    marginsomode = models.PositiveIntegerField(db_column='MarginSOMode')  # Field name made lowercase.
    marginfreemode = models.PositiveIntegerField(db_column='MarginFreeMode')  # Field name made lowercase.
    margincall = models.FloatField(db_column='MarginCall')  # Field name made lowercase.
    marginstopout = models.FloatField(db_column='MarginStopOut')  # Field name made lowercase.
    marginfreeprofitmode = models.PositiveIntegerField(db_column='MarginFreeProfitMode')  # Field name made lowercase.
    demoleverage = models.PositiveIntegerField(db_column='DemoLeverage')  # Field name made lowercase.
    demodeposit = models.FloatField(db_column='DemoDeposit')  # Field name made lowercase.
    limithistory = models.PositiveIntegerField(db_column='LimitHistory')  # Field name made lowercase.
    limitorders = models.PositiveIntegerField(db_column='LimitOrders')  # Field name made lowercase.
    limitsymbols = models.PositiveIntegerField(db_column='LimitSymbols')  # Field name made lowercase.
    limitpositions = models.PositiveIntegerField(db_column='LimitPositions')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_groups'


class Mt5GroupsSymbols(models.Model):
    symbol_id = models.BigIntegerField(db_column='Symbol_ID', primary_key=True)  # Field name made lowercase.
    group_id = models.BigIntegerField(db_column='Group_ID')  # Field name made lowercase.
    path = models.CharField(db_column='Path', max_length=128)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    trademode = models.PositiveIntegerField(db_column='TradeMode', blank=True, null=True)  # Field name made lowercase.
    execmode = models.PositiveIntegerField(db_column='ExecMode', blank=True, null=True)  # Field name made lowercase.
    fillflags = models.PositiveIntegerField(db_column='FillFlags', blank=True, null=True)  # Field name made lowercase.
    expirflags = models.PositiveIntegerField(db_column='ExpirFlags', blank=True, null=True)  # Field name made lowercase.
    orderflags = models.PositiveIntegerField(db_column='OrderFlags', blank=True, null=True)  # Field name made lowercase.
    spreaddiff = models.IntegerField(db_column='SpreadDiff', blank=True, null=True)  # Field name made lowercase.
    spreaddiffbalance = models.IntegerField(db_column='SpreadDiffBalance', blank=True, null=True)  # Field name made lowercase.
    stopslevel = models.IntegerField(db_column='StopsLevel', blank=True, null=True)  # Field name made lowercase.
    freezelevel = models.IntegerField(db_column='FreezeLevel', blank=True, null=True)  # Field name made lowercase.
    volumeminext = models.BigIntegerField(db_column='VolumeMinExt', blank=True, null=True)  # Field name made lowercase.
    volumemaxext = models.BigIntegerField(db_column='VolumeMaxExt', blank=True, null=True)  # Field name made lowercase.
    volumestepext = models.BigIntegerField(db_column='VolumeStepExt', blank=True, null=True)  # Field name made lowercase.
    volumelimitext = models.BigIntegerField(db_column='VolumeLimitExt', blank=True, null=True)  # Field name made lowercase.
    marginflags = models.PositiveIntegerField(db_column='MarginFlags', blank=True, null=True)  # Field name made lowercase.
    margininitial = models.FloatField(db_column='MarginInitial', blank=True, null=True)  # Field name made lowercase.
    marginmaintenance = models.FloatField(db_column='MarginMaintenance', blank=True, null=True)  # Field name made lowercase.
    margininitialbuy = models.FloatField(db_column='MarginInitialBuy', blank=True, null=True)  # Field name made lowercase.
    margininitialsell = models.FloatField(db_column='MarginInitialSell', blank=True, null=True)  # Field name made lowercase.
    margininitialbuylimit = models.FloatField(db_column='MarginInitialBuyLimit', blank=True, null=True)  # Field name made lowercase.
    margininitialselllimit = models.FloatField(db_column='MarginInitialSellLimit', blank=True, null=True)  # Field name made lowercase.
    margininitialbuystop = models.FloatField(db_column='MarginInitialBuyStop', blank=True, null=True)  # Field name made lowercase.
    margininitialsellstop = models.FloatField(db_column='MarginInitialSellStop', blank=True, null=True)  # Field name made lowercase.
    margininitialbuystoplimit = models.FloatField(db_column='MarginInitialBuyStopLimit', blank=True, null=True)  # Field name made lowercase.
    margininitialsellstoplimit = models.FloatField(db_column='MarginInitialSellStopLimit', blank=True, null=True)  # Field name made lowercase.
    marginmaintenancebuy = models.FloatField(db_column='MarginMaintenanceBuy', blank=True, null=True)  # Field name made lowercase.
    marginmaintenancesell = models.FloatField(db_column='MarginMaintenanceSell', blank=True, null=True)  # Field name made lowercase.
    marginmaintenancebuylimit = models.FloatField(db_column='MarginMaintenanceBuyLimit', blank=True, null=True)  # Field name made lowercase.
    marginmaintenanceselllimit = models.FloatField(db_column='MarginMaintenanceSellLimit', blank=True, null=True)  # Field name made lowercase.
    marginmaintenancebuystop = models.FloatField(db_column='MarginMaintenanceBuyStop', blank=True, null=True)  # Field name made lowercase.
    marginmaintenancesellstop = models.FloatField(db_column='MarginMaintenanceSellStop', blank=True, null=True)  # Field name made lowercase.
    marginmaintenancebuystoplimit = models.FloatField(db_column='MarginMaintenanceBuyStopLimit', blank=True, null=True)  # Field name made lowercase.
    marginmaintenancesellstoplimit = models.FloatField(db_column='MarginMaintenanceSellStopLimit', blank=True, null=True)  # Field name made lowercase.
    marginliquidity = models.FloatField(db_column='MarginLiquidity', blank=True, null=True)  # Field name made lowercase.
    marginhedged = models.FloatField(db_column='MarginHedged', blank=True, null=True)  # Field name made lowercase.
    margincurrency = models.FloatField(db_column='MarginCurrency', blank=True, null=True)  # Field name made lowercase.
    swapmode = models.PositiveIntegerField(db_column='SwapMode', blank=True, null=True)  # Field name made lowercase.
    swaplong = models.FloatField(db_column='SwapLong', blank=True, null=True)  # Field name made lowercase.
    swapshort = models.FloatField(db_column='SwapShort', blank=True, null=True)  # Field name made lowercase.
    swap3day = models.IntegerField(db_column='Swap3Day', blank=True, null=True)  # Field name made lowercase.
    reflags = models.PositiveIntegerField(db_column='REFlags', blank=True, null=True)  # Field name made lowercase.
    retimeout = models.PositiveIntegerField(db_column='RETimeout', blank=True, null=True)  # Field name made lowercase.
    ieflags = models.PositiveIntegerField(db_column='IEFlags', blank=True, null=True)  # Field name made lowercase.
    iecheckmode = models.PositiveIntegerField(db_column='IECheckMode', blank=True, null=True)  # Field name made lowercase.
    ietimeout = models.PositiveIntegerField(db_column='IETimeout', blank=True, null=True)  # Field name made lowercase.
    ieslipprofit = models.PositiveIntegerField(db_column='IESlipProfit', blank=True, null=True)  # Field name made lowercase.
    iesliplosing = models.PositiveIntegerField(db_column='IESlipLosing', blank=True, null=True)  # Field name made lowercase.
    ievolumemaxext = models.BigIntegerField(db_column='IEVolumeMaxExt', blank=True, null=True)  # Field name made lowercase.
    permissionsflags = models.PositiveIntegerField(db_column='PermissionsFlags', blank=True, null=True)  # Field name made lowercase.
    permissionsbookdepth = models.PositiveIntegerField(db_column='PermissionsBookdepth', blank=True, null=True)  # Field name made lowercase.
    volumemin = models.BigIntegerField(db_column='VolumeMin', blank=True, null=True)  # Field name made lowercase.
    volumemax = models.BigIntegerField(db_column='VolumeMax', blank=True, null=True)  # Field name made lowercase.
    volumestep = models.BigIntegerField(db_column='VolumeStep', blank=True, null=True)  # Field name made lowercase.
    volumelimit = models.BigIntegerField(db_column='VolumeLimit', blank=True, null=True)  # Field name made lowercase.
    ievolumemax = models.BigIntegerField(db_column='IEVolumeMax', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_groups_symbols'


class Mt5Holidays(models.Model):
    year = models.PositiveIntegerField(db_column='Year', primary_key=True)  # Field name made lowercase.
    month = models.PositiveIntegerField(db_column='Month')  # Field name made lowercase.
    day = models.PositiveIntegerField(db_column='Day')  # Field name made lowercase.
    from_field = models.PositiveIntegerField(db_column='From')  # Field name made lowercase. Field renamed because it was a Python reserved word.
    to = models.PositiveIntegerField(db_column='To')  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=128)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    mode = models.PositiveIntegerField(db_column='Mode')  # Field name made lowercase.
    symbols = models.CharField(db_column='Symbols', max_length=2000)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_holidays'
        unique_together = (('year', 'month', 'day', 'from_field', 'to', 'description'),)


class Mt5Managers(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=128)  # Field name made lowercase.
    mailbox = models.CharField(db_column='Mailbox', max_length=64)  # Field name made lowercase.
    server = models.BigIntegerField(db_column='Server')  # Field name made lowercase.
    requestlimitlogs = models.PositiveIntegerField(db_column='RequestLimitLogs')  # Field name made lowercase.
    requestlimitreports = models.PositiveIntegerField(db_column='RequestLimitReports')  # Field name made lowercase.
    groups = models.CharField(db_column='Groups', max_length=2000)  # Field name made lowercase.
    access = models.CharField(db_column='Access', max_length=2000)  # Field name made lowercase.
    right_admin = models.PositiveIntegerField(db_column='Right_Admin')  # Field name made lowercase.
    right_manager = models.PositiveIntegerField(db_column='Right_Manager')  # Field name made lowercase.
    right_cfg_servers = models.PositiveIntegerField(db_column='Right_Cfg_Servers')  # Field name made lowercase.
    right_cfg_access = models.PositiveIntegerField(db_column='Right_Cfg_Access')  # Field name made lowercase.
    right_cfg_time = models.PositiveIntegerField(db_column='Right_Cfg_Time')  # Field name made lowercase.
    right_cfg_holidays = models.PositiveIntegerField(db_column='Right_Cfg_Holidays')  # Field name made lowercase.
    right_cfg_groups = models.PositiveIntegerField(db_column='Right_Cfg_Groups')  # Field name made lowercase.
    right_cfg_managers = models.PositiveIntegerField(db_column='Right_Cfg_Managers')  # Field name made lowercase.
    right_cfg_requests = models.PositiveIntegerField(db_column='Right_Cfg_Requests')  # Field name made lowercase.
    right_cfg_gateways = models.PositiveIntegerField(db_column='Right_Cfg_Gateways')  # Field name made lowercase.
    right_cfg_plugins = models.PositiveIntegerField(db_column='Right_Cfg_Plugins')  # Field name made lowercase.
    right_cfg_datafeeds = models.PositiveIntegerField(db_column='Right_Cfg_Datafeeds')  # Field name made lowercase.
    right_cfg_reports = models.PositiveIntegerField(db_column='Right_Cfg_Reports')  # Field name made lowercase.
    right_cfg_symbols = models.PositiveIntegerField(db_column='Right_Cfg_Symbols')  # Field name made lowercase.
    right_cfg_hst_sync = models.PositiveIntegerField(db_column='Right_Cfg_Hst_Sync')  # Field name made lowercase.
    right_srv_journals = models.PositiveIntegerField(db_column='Right_Srv_Journals')  # Field name made lowercase.
    right_srv_reports = models.PositiveIntegerField(db_column='Right_Srv_Reports')  # Field name made lowercase.
    right_charts = models.PositiveIntegerField(db_column='Right_Charts')  # Field name made lowercase.
    right_email = models.PositiveIntegerField(db_column='Right_Email')  # Field name made lowercase.
    right_news = models.PositiveIntegerField(db_column='Right_News')  # Field name made lowercase.
    right_export = models.PositiveIntegerField(db_column='Right_Export')  # Field name made lowercase.
    right_techsupport = models.PositiveIntegerField(db_column='Right_Techsupport')  # Field name made lowercase.
    right_market = models.PositiveIntegerField(db_column='Right_Market')  # Field name made lowercase.
    right_accountant = models.PositiveIntegerField(db_column='Right_Accountant')  # Field name made lowercase.
    right_acc_read = models.PositiveIntegerField(db_column='Right_Acc_Read')  # Field name made lowercase.
    right_acc_details = models.PositiveIntegerField(db_column='Right_Acc_Details')  # Field name made lowercase.
    right_acc_manager = models.PositiveIntegerField(db_column='Right_Acc_Manager')  # Field name made lowercase.
    right_acc_delete = models.PositiveIntegerField(db_column='Right_Acc_Delete')  # Field name made lowercase.
    right_acc_online = models.PositiveIntegerField(db_column='Right_Acc_Online')  # Field name made lowercase.
    right_confirm_actions = models.PositiveIntegerField(db_column='Right_Confirm_Actions')  # Field name made lowercase.
    right_notifications = models.PositiveIntegerField(db_column='Right_Notifications')  # Field name made lowercase.
    right_trades_read = models.PositiveIntegerField(db_column='Right_Trades_Read')  # Field name made lowercase.
    right_trades_manager = models.PositiveIntegerField(db_column='Right_Trades_Manager')  # Field name made lowercase.
    right_trades_delete = models.PositiveIntegerField(db_column='Right_Trades_Delete')  # Field name made lowercase.
    right_trades_dealer = models.PositiveIntegerField(db_column='Right_Trades_Dealer')  # Field name made lowercase.
    right_trades_supervisor = models.PositiveIntegerField(db_column='Right_Trades_Supervisor')  # Field name made lowercase.
    right_quotes_raw = models.PositiveIntegerField(db_column='Right_Quotes_Raw')  # Field name made lowercase.
    right_quotes = models.PositiveIntegerField(db_column='Right_Quotes')  # Field name made lowercase.
    right_symbol_details = models.PositiveIntegerField(db_column='Right_Symbol_Details')  # Field name made lowercase.
    right_risk_manager = models.PositiveIntegerField(db_column='Right_Risk_Manager')  # Field name made lowercase.
    right_group_details = models.PositiveIntegerField(db_column='Right_Group_Details')  # Field name made lowercase.
    right_reports = models.PositiveIntegerField(db_column='Right_Reports')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_managers'


class Mt5Network(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=32)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=64)  # Field name made lowercase.
    port = models.PositiveIntegerField(db_column='Port')  # Field name made lowercase.
    adapter = models.CharField(db_column='Adapter', max_length=128)  # Field name made lowercase.
    servicetime = models.PositiveIntegerField(db_column='ServiceTime')  # Field name made lowercase.
    failovermode = models.PositiveIntegerField(db_column='FailoverMode')  # Field name made lowercase.
    failovertimeout = models.PositiveIntegerField(db_column='FailoverTimeout')  # Field name made lowercase.
    adapters = models.CharField(db_column='Adapters', max_length=512)  # Field name made lowercase.
    addresses = models.CharField(db_column='Addresses', max_length=512)  # Field name made lowercase.
    binds = models.CharField(db_column='Binds', max_length=512)  # Field name made lowercase.
    points = models.CharField(db_column='Points', max_length=512)  # Field name made lowercase.
    version = models.PositiveIntegerField(db_column='Version')  # Field name made lowercase.
    build = models.PositiveIntegerField(db_column='Build')  # Field name made lowercase.
    builddate = models.CharField(db_column='BuildDate', max_length=32)  # Field name made lowercase.
    sysconnection = models.PositiveIntegerField(db_column='SysConnection')  # Field name made lowercase.
    syslastboot = models.DateTimeField(db_column='SysLastBoot')  # Field name made lowercase.
    sysosname = models.CharField(db_column='SysOsName', max_length=64)  # Field name made lowercase.
    syscpuname = models.CharField(db_column='SysCpuName', max_length=64)  # Field name made lowercase.
    syscpunumber = models.PositiveIntegerField(db_column='SysCpuNumber')  # Field name made lowercase.
    sysbits = models.PositiveIntegerField(db_column='SysBits')  # Field name made lowercase.
    sysmemorytotal = models.PositiveIntegerField(db_column='SysMemoryTotal')  # Field name made lowercase.
    sysmemoryfree = models.PositiveIntegerField(db_column='SysMemoryFree')  # Field name made lowercase.
    sysmemorycritical = models.PositiveIntegerField(db_column='SysMemoryCritical')  # Field name made lowercase.
    syshddsize = models.PositiveIntegerField(db_column='SysHddSize')  # Field name made lowercase.
    syshddfree = models.PositiveIntegerField(db_column='SysHddFree')  # Field name made lowercase.
    syshddcritical = models.PositiveIntegerField(db_column='SysHddCritical')  # Field name made lowercase.
    syshddfragmentation = models.PositiveIntegerField(db_column='SysHddFragmentation')  # Field name made lowercase.
    syshddfragcritical = models.PositiveIntegerField(db_column='SysHddFragCritical')  # Field name made lowercase.
    syshdddefragrecommend = models.PositiveIntegerField(db_column='SysHddDefragRecommend')  # Field name made lowercase.
    syshddreadspeed = models.PositiveIntegerField(db_column='SysHddReadSpeed')  # Field name made lowercase.
    syshddreadcritical = models.PositiveIntegerField(db_column='SysHddReadCritical')  # Field name made lowercase.
    syshddwritespeed = models.PositiveIntegerField(db_column='SysHddWriteSpeed')  # Field name made lowercase.
    syshddwritecritical = models.PositiveIntegerField(db_column='SysHddWriteCritical')  # Field name made lowercase.
    perfconnectsmax = models.PositiveIntegerField(db_column='PerfConnectsMax')  # Field name made lowercase.
    perfconnectscritical = models.PositiveIntegerField(db_column='PerfConnectsCritical')  # Field name made lowercase.
    perfcpumax = models.PositiveIntegerField(db_column='PerfCpuMax')  # Field name made lowercase.
    perfcpucritical = models.PositiveIntegerField(db_column='PerfCpuCritical')  # Field name made lowercase.
    perfmemorymin = models.PositiveIntegerField(db_column='PerfMemoryMin')  # Field name made lowercase.
    perfmemorycritical = models.PositiveIntegerField(db_column='PerfMemoryCritical')  # Field name made lowercase.
    perfmemblockmin = models.PositiveIntegerField(db_column='PerfMemBlockMin')  # Field name made lowercase.
    perfmemblockcritical = models.PositiveIntegerField(db_column='PerfMemBlockCritical')  # Field name made lowercase.
    perfnetworkmax = models.PositiveIntegerField(db_column='PerfNetworkMax')  # Field name made lowercase.
    perfnetworkcritical = models.PositiveIntegerField(db_column='PerfNetworkCritical')  # Field name made lowercase.
    perfsocketsmax = models.PositiveIntegerField(db_column='PerfSocketsMax')  # Field name made lowercase.
    perfsocketscritical = models.PositiveIntegerField(db_column='PerfSocketsCritical')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_network'


class Mt5NetworkAccessServers(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    priority = models.PositiveIntegerField(db_column='Priority')  # Field name made lowercase.
    antifloodenable = models.PositiveIntegerField(db_column='AntifloodEnable')  # Field name made lowercase.
    antifloodconnects = models.PositiveIntegerField(db_column='AntifloodConnects')  # Field name made lowercase.
    antiflooderrors = models.PositiveIntegerField(db_column='AntifloodErrors')  # Field name made lowercase.
    newsmaxcount = models.PositiveIntegerField(db_column='NewsMaxCount')  # Field name made lowercase.
    balancingconnections = models.PositiveIntegerField(db_column='BalancingConnections')  # Field name made lowercase.
    balancingpriority = models.PositiveIntegerField(db_column='BalancingPriority')  # Field name made lowercase.
    accessmask = models.PositiveIntegerField(db_column='AccessMask')  # Field name made lowercase.
    accessflags = models.PositiveIntegerField(db_column='AccessFlags')  # Field name made lowercase.
    servers = models.CharField(db_column='Servers', max_length=256)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_network_access_servers'


class Mt5NetworkAntiddos(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    priority = models.PositiveIntegerField(db_column='Priority')  # Field name made lowercase.
    accessmask = models.PositiveIntegerField(db_column='AccessMask')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_network_antiddos'


class Mt5NetworkBackupFolders(models.Model):
    folder_id = models.BigIntegerField(db_column='Folder_ID', primary_key=True)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    folder = models.CharField(db_column='Folder', max_length=260)  # Field name made lowercase.
    masks = models.CharField(db_column='Masks', max_length=260)  # Field name made lowercase.
    filter = models.CharField(db_column='Filter', max_length=260)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_network_backup_folders'


class Mt5NetworkBackupServers(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    pairserver = models.BigIntegerField(db_column='PairServer')  # Field name made lowercase.
    backupflags = models.BigIntegerField(db_column='BackupFlags')  # Field name made lowercase.
    backuppath = models.CharField(db_column='BackupPath', max_length=256)  # Field name made lowercase.
    backupperiod = models.PositiveIntegerField(db_column='BackupPeriod')  # Field name made lowercase.
    backupttl = models.PositiveIntegerField(db_column='BackupTtl')  # Field name made lowercase.
    backuptimefull = models.PositiveIntegerField(db_column='BackupTimeFull')  # Field name made lowercase.
    backuplaststartup = models.DateTimeField(db_column='BackupLastStartup')  # Field name made lowercase.
    backuplastfull = models.DateTimeField(db_column='BackupLastFull')  # Field name made lowercase.
    backuplastarchive = models.DateTimeField(db_column='BackupLastArchive')  # Field name made lowercase.
    backuplastsync = models.DateTimeField(db_column='BackupLastSync')  # Field name made lowercase.
    sqlmode = models.PositiveIntegerField(db_column='SqlMode')  # Field name made lowercase.
    sqlserver = models.CharField(db_column='SqlServer', max_length=128)  # Field name made lowercase.
    sqlfolder = models.CharField(db_column='SqlFolder', max_length=128)  # Field name made lowercase.
    sqlflags = models.BigIntegerField(db_column='SqlFlags')  # Field name made lowercase.
    sqlperiod = models.PositiveIntegerField(db_column='SqlPeriod')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_network_backup_servers'


class Mt5NetworkHistoryServers(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    datafeedtimeout = models.PositiveIntegerField(db_column='DatafeedTimeout')  # Field name made lowercase.
    newsmaxcount = models.PositiveIntegerField(db_column='NewsMaxCount')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_network_history_servers'


class Mt5NetworkTradeServers(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    demomode = models.PositiveIntegerField(db_column='DemoMode')  # Field name made lowercase.
    demoperiod = models.PositiveIntegerField(db_column='DemoPeriod')  # Field name made lowercase.
    overnighttime = models.PositiveIntegerField(db_column='OvernightTime')  # Field name made lowercase.
    overnightmode = models.PositiveIntegerField(db_column='OvernightMode')  # Field name made lowercase.
    overnighprevtime = models.DateTimeField(db_column='OvernighPrevTime')  # Field name made lowercase.
    overnightlasttime = models.DateTimeField(db_column='OvernightLastTime')  # Field name made lowercase.
    overnightdays = models.PositiveIntegerField(db_column='OvernightDays')  # Field name made lowercase.
    overmonthmode = models.PositiveIntegerField(db_column='OvermonthMode')  # Field name made lowercase.
    overmonthprevtime = models.DateTimeField(db_column='OvermonthPrevTime')  # Field name made lowercase.
    overmonthlasttime = models.DateTimeField(db_column='OvermonthLastTime')  # Field name made lowercase.
    totalusers = models.PositiveIntegerField(db_column='TotalUsers')  # Field name made lowercase.
    totalusersreal = models.PositiveIntegerField(db_column='TotalUsersReal')  # Field name made lowercase.
    totaldeals = models.PositiveIntegerField(db_column='TotalDeals')  # Field name made lowercase.
    totalorders = models.PositiveIntegerField(db_column='TotalOrders')  # Field name made lowercase.
    totalordershistory = models.PositiveIntegerField(db_column='TotalOrdersHistory')  # Field name made lowercase.
    totalpositions = models.PositiveIntegerField(db_column='TotalPositions')  # Field name made lowercase.
    loginsrange = models.CharField(db_column='LoginsRange', max_length=256)  # Field name made lowercase.
    loginsrangeused = models.CharField(db_column='LoginsRangeUsed', max_length=256)  # Field name made lowercase.
    ordersrange = models.CharField(db_column='OrdersRange', max_length=256)  # Field name made lowercase.
    ordersrangeused = models.CharField(db_column='OrdersRangeUsed', max_length=256)  # Field name made lowercase.
    dealsrange = models.CharField(db_column='DealsRange', max_length=256)  # Field name made lowercase.
    dealsrangeused = models.CharField(db_column='DealsRangeUsed', max_length=256)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_network_trade_servers'


class Mt5Orders(models.Model):
    order = models.BigIntegerField(db_column='Order', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    externalid = models.CharField(db_column='ExternalID', max_length=32)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    dealer = models.BigIntegerField(db_column='Dealer')  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    digitscurrency = models.PositiveIntegerField(db_column='DigitsCurrency')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    state = models.PositiveIntegerField(db_column='State')  # Field name made lowercase.
    reason = models.PositiveIntegerField(db_column='Reason')  # Field name made lowercase.
    timesetup = models.DateTimeField(db_column='TimeSetup')  # Field name made lowercase.
    timeexpiration = models.DateTimeField(db_column='TimeExpiration')  # Field name made lowercase.
    timedone = models.DateTimeField(db_column='TimeDone')  # Field name made lowercase.
    timesetupmsc = models.DateTimeField(db_column='TimeSetupMsc')  # Field name made lowercase.
    timedonemsc = models.DateTimeField(db_column='TimeDoneMsc')  # Field name made lowercase.
    modifyflags = models.PositiveIntegerField(db_column='ModifyFlags')  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    typefill = models.PositiveIntegerField(db_column='TypeFill')  # Field name made lowercase.
    typetime = models.PositiveIntegerField(db_column='TypeTime')  # Field name made lowercase.
    priceorder = models.FloatField(db_column='PriceOrder')  # Field name made lowercase.
    pricetrigger = models.FloatField(db_column='PriceTrigger')  # Field name made lowercase.
    pricecurrent = models.FloatField(db_column='PriceCurrent')  # Field name made lowercase.
    pricesl = models.FloatField(db_column='PriceSL')  # Field name made lowercase.
    pricetp = models.FloatField(db_column='PriceTP')  # Field name made lowercase.
    volumeinitialext = models.BigIntegerField(db_column='VolumeInitialExt')  # Field name made lowercase.
    volumecurrentext = models.BigIntegerField(db_column='VolumeCurrentExt')  # Field name made lowercase.
    expertid = models.BigIntegerField(db_column='ExpertID')  # Field name made lowercase.
    positionid = models.BigIntegerField(db_column='PositionID')  # Field name made lowercase.
    positionbyid = models.BigIntegerField(db_column='PositionByID')  # Field name made lowercase.
    ratemargin = models.FloatField(db_column='RateMargin')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.
    activationmode = models.PositiveIntegerField(db_column='ActivationMode')  # Field name made lowercase.
    activationtime = models.BigIntegerField(db_column='ActivationTime')  # Field name made lowercase.
    activationprice = models.FloatField(db_column='ActivationPrice')  # Field name made lowercase.
    activationflags = models.PositiveIntegerField(db_column='ActivationFlags')  # Field name made lowercase.
    volumeinitial = models.BigIntegerField(db_column='VolumeInitial')  # Field name made lowercase.
    volumecurrent = models.BigIntegerField(db_column='VolumeCurrent')  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_orders'



class Mt5Orders2019(models.Model):
    order = models.BigIntegerField(db_column='Order', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    externalid = models.CharField(db_column='ExternalID', max_length=32)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    dealer = models.BigIntegerField(db_column='Dealer')  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    digitscurrency = models.PositiveIntegerField(db_column='DigitsCurrency')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    state = models.PositiveIntegerField(db_column='State')  # Field name made lowercase.
    reason = models.PositiveIntegerField(db_column='Reason')  # Field name made lowercase.
    timesetup = models.DateTimeField(db_column='TimeSetup')  # Field name made lowercase.
    timeexpiration = models.DateTimeField(db_column='TimeExpiration')  # Field name made lowercase.
    timedone = models.DateTimeField(db_column='TimeDone')  # Field name made lowercase.
    timesetupmsc = models.DateTimeField(db_column='TimeSetupMsc')  # Field name made lowercase.
    timedonemsc = models.DateTimeField(db_column='TimeDoneMsc')  # Field name made lowercase.
    modifyflags = models.PositiveIntegerField(db_column='ModifyFlags')  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    typefill = models.PositiveIntegerField(db_column='TypeFill')  # Field name made lowercase.
    typetime = models.PositiveIntegerField(db_column='TypeTime')  # Field name made lowercase.
    priceorder = models.FloatField(db_column='PriceOrder')  # Field name made lowercase.
    pricetrigger = models.FloatField(db_column='PriceTrigger')  # Field name made lowercase.
    pricecurrent = models.FloatField(db_column='PriceCurrent')  # Field name made lowercase.
    pricesl = models.FloatField(db_column='PriceSL')  # Field name made lowercase.
    pricetp = models.FloatField(db_column='PriceTP')  # Field name made lowercase.
    volumeinitialext = models.BigIntegerField(db_column='VolumeInitialExt')  # Field name made lowercase.
    volumecurrentext = models.BigIntegerField(db_column='VolumeCurrentExt')  # Field name made lowercase.
    expertid = models.BigIntegerField(db_column='ExpertID')  # Field name made lowercase.
    positionid = models.BigIntegerField(db_column='PositionID')  # Field name made lowercase.
    positionbyid = models.BigIntegerField(db_column='PositionByID')  # Field name made lowercase.
    ratemargin = models.FloatField(db_column='RateMargin')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.
    activationmode = models.PositiveIntegerField(db_column='ActivationMode')  # Field name made lowercase.
    activationtime = models.BigIntegerField(db_column='ActivationTime')  # Field name made lowercase.
    activationprice = models.FloatField(db_column='ActivationPrice')  # Field name made lowercase.
    activationflags = models.PositiveIntegerField(db_column='ActivationFlags')  # Field name made lowercase.
    volumeinitial = models.BigIntegerField(db_column='VolumeInitial')  # Field name made lowercase.
    volumecurrent = models.BigIntegerField(db_column='VolumeCurrent')  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_orders_2019'


class Mt5OrdersHistory(models.Model):
    order = models.BigIntegerField(db_column='Order', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    externalid = models.CharField(db_column='ExternalID', max_length=32)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    dealer = models.BigIntegerField(db_column='Dealer')  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    digitscurrency = models.PositiveIntegerField(db_column='DigitsCurrency')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    state = models.PositiveIntegerField(db_column='State')  # Field name made lowercase.
    reason = models.PositiveIntegerField(db_column='Reason')  # Field name made lowercase.
    timesetup = models.DateTimeField(db_column='TimeSetup')  # Field name made lowercase.
    timeexpiration = models.DateTimeField(db_column='TimeExpiration')  # Field name made lowercase.
    timedone = models.DateTimeField(db_column='TimeDone')  # Field name made lowercase.
    timesetupmsc = models.DateTimeField(db_column='TimeSetupMsc')  # Field name made lowercase.
    timedonemsc = models.DateTimeField(db_column='TimeDoneMsc')  # Field name made lowercase.
    modifyflags = models.PositiveIntegerField(db_column='ModifyFlags')  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    typefill = models.PositiveIntegerField(db_column='TypeFill')  # Field name made lowercase.
    typetime = models.PositiveIntegerField(db_column='TypeTime')  # Field name made lowercase.
    priceorder = models.FloatField(db_column='PriceOrder')  # Field name made lowercase.
    pricetrigger = models.FloatField(db_column='PriceTrigger')  # Field name made lowercase.
    pricecurrent = models.FloatField(db_column='PriceCurrent')  # Field name made lowercase.
    pricesl = models.FloatField(db_column='PriceSL')  # Field name made lowercase.
    pricetp = models.FloatField(db_column='PriceTP')  # Field name made lowercase.
    volumeinitialext = models.BigIntegerField(db_column='VolumeInitialExt')  # Field name made lowercase.
    volumecurrentext = models.BigIntegerField(db_column='VolumeCurrentExt')  # Field name made lowercase.
    expertid = models.BigIntegerField(db_column='ExpertID')  # Field name made lowercase.
    positionid = models.BigIntegerField(db_column='PositionID')  # Field name made lowercase.
    positionbyid = models.BigIntegerField(db_column='PositionByID')  # Field name made lowercase.
    ratemargin = models.FloatField(db_column='RateMargin')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.
    activationmode = models.PositiveIntegerField(db_column='ActivationMode')  # Field name made lowercase.
    activationtime = models.BigIntegerField(db_column='ActivationTime')  # Field name made lowercase.
    activationprice = models.FloatField(db_column='ActivationPrice')  # Field name made lowercase.
    activationflags = models.PositiveIntegerField(db_column='ActivationFlags')  # Field name made lowercase.
    volumeinitial = models.BigIntegerField(db_column='VolumeInitial')  # Field name made lowercase.
    volumecurrent = models.BigIntegerField(db_column='VolumeCurrent')  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_orders_history'

class Mt5PluginParams(models.Model):
    param_id = models.BigIntegerField(db_column='Param_ID', primary_key=True)  # Field name made lowercase.
    server = models.BigIntegerField(db_column='Server')  # Field name made lowercase.
    plugin = models.CharField(db_column='Plugin', max_length=64)  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=64)  # Field name made lowercase.
    value = models.CharField(db_column='Value', max_length=256)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_plugin_params'


class Mt5Plugins(models.Model):
    name = models.CharField(db_column='Name', primary_key=True, max_length=64)  # Field name made lowercase.
    server = models.BigIntegerField(db_column='Server')  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    module = models.CharField(db_column='Module', max_length=64)  # Field name made lowercase.
    enable = models.PositiveIntegerField(db_column='Enable')  # Field name made lowercase.
    flags = models.PositiveIntegerField(db_column='Flags')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_plugins'
        unique_together = (('name', 'server'),)


class Mt5Positions(models.Model):
    position_id = models.BigIntegerField(db_column='Position_ID', primary_key=True)  # Field name made lowercase.
    position = models.BigIntegerField(db_column='Position')  # Field name made lowercase.
    externalid = models.CharField(db_column='ExternalID', max_length=32)  # Field name made lowercase.
    login = models.BigIntegerField(db_column='Login')  # Field name made lowercase.
    dealer = models.BigIntegerField(db_column='Dealer')  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    action = models.PositiveIntegerField(db_column='Action')  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    digitscurrency = models.PositiveIntegerField(db_column='DigitsCurrency')  # Field name made lowercase.
    reason = models.PositiveIntegerField(db_column='Reason')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    timecreate = models.DateTimeField(db_column='TimeCreate')  # Field name made lowercase.
    timeupdate = models.DateTimeField(db_column='TimeUpdate')  # Field name made lowercase.
    timecreatemsc = models.DateTimeField(db_column='TimeCreateMsc')  # Field name made lowercase.
    timeupdatemsc = models.DateTimeField(db_column='TimeUpdateMsc')  # Field name made lowercase.
    priceopen = models.FloatField(db_column='PriceOpen')  # Field name made lowercase.
    pricecurrent = models.FloatField(db_column='PriceCurrent')  # Field name made lowercase.
    pricesl = models.FloatField(db_column='PriceSL')  # Field name made lowercase.
    pricetp = models.FloatField(db_column='PriceTP')  # Field name made lowercase.
    volumeext = models.BigIntegerField(db_column='VolumeExt')  # Field name made lowercase.
    profit = models.FloatField(db_column='Profit')  # Field name made lowercase.
    storage = models.FloatField(db_column='Storage')  # Field name made lowercase.
    rateprofit = models.FloatField(db_column='RateProfit')  # Field name made lowercase.
    ratemargin = models.FloatField(db_column='RateMargin')  # Field name made lowercase.
    expertid = models.BigIntegerField(db_column='ExpertID')  # Field name made lowercase.
    expertpositionid = models.BigIntegerField(db_column='ExpertPositionID')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=32)  # Field name made lowercase.
    activationmode = models.PositiveIntegerField(db_column='ActivationMode')  # Field name made lowercase.
    activationtime = models.BigIntegerField(db_column='ActivationTime')  # Field name made lowercase.
    activationprice = models.FloatField(db_column='ActivationPrice')  # Field name made lowercase.
    activationflags = models.PositiveIntegerField(db_column='ActivationFlags')  # Field name made lowercase.
    volume = models.BigIntegerField(db_column='Volume')  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

        class Meta:
            managed = False
            db_table = 'mt5_positions'


class Mt5Prices(models.Model):
    price_id = models.BigIntegerField(db_column='Price_ID', primary_key=True)  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    biddir = models.PositiveIntegerField(db_column='BidDir')  # Field name made lowercase.
    askdir = models.PositiveIntegerField(db_column='AskDir')  # Field name made lowercase.
    lastdir = models.PositiveIntegerField(db_column='LastDir')  # Field name made lowercase.
    time = models.DateTimeField(db_column='Time')  # Field name made lowercase.
    bidlast = models.FloatField(db_column='BidLast')  # Field name made lowercase.
    bidhigh = models.FloatField(db_column='BidHigh')  # Field name made lowercase.
    bidlow = models.FloatField(db_column='BidLow')  # Field name made lowercase.
    asklast = models.FloatField(db_column='AskLast')  # Field name made lowercase.
    askhigh = models.FloatField(db_column='AskHigh')  # Field name made lowercase.
    asklow = models.FloatField(db_column='AskLow')  # Field name made lowercase.
    lastlast = models.FloatField(db_column='LastLast')  # Field name made lowercase.
    lasthigh = models.FloatField(db_column='LastHigh')  # Field name made lowercase.
    lastlow = models.FloatField(db_column='LastLow')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_prices'


class Mt5ReportParams(models.Model):
    param_id = models.BigIntegerField(db_column='Param_ID', primary_key=True)  # Field name made lowercase.
    server = models.BigIntegerField(db_column='Server')  # Field name made lowercase.
    report = models.CharField(db_column='Report', max_length=64)  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=64)  # Field name made lowercase.
    value = models.CharField(db_column='Value', max_length=256)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_report_params'


class Mt5Reports(models.Model):
    name = models.CharField(db_column='Name', primary_key=True, max_length=64)  # Field name made lowercase.
    server = models.BigIntegerField(db_column='Server')  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    template = models.CharField(db_column='Template', max_length=64)  # Field name made lowercase.
    enable = models.PositiveIntegerField(db_column='Enable')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_reports'
        unique_together = (('name', 'server'),)


class Mt5Routing(models.Model):
    name = models.CharField(db_column='Name', primary_key=True, max_length=64)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    mode = models.PositiveIntegerField(db_column='Mode')  # Field name made lowercase.
    request = models.PositiveIntegerField(db_column='Request')  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    flags = models.PositiveIntegerField(db_column='Flags')  # Field name made lowercase.
    action = models.PositiveIntegerField(db_column='Action')  # Field name made lowercase.
    actionvaluestring = models.CharField(db_column='ActionValueString', max_length=128, blank=True, null=True)  # Field name made lowercase.
    actionvalueint = models.BigIntegerField(db_column='ActionValueInt', blank=True, null=True)  # Field name made lowercase.
    actionvalueuint = models.BigIntegerField(db_column='ActionValueUInt', blank=True, null=True)  # Field name made lowercase.
    actionvaluefloat = models.FloatField(db_column='ActionValueFloat', blank=True, null=True)  # Field name made lowercase.
    actiontype = models.PositiveIntegerField(db_column='ActionType')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_routing'


class Mt5RoutingConds(models.Model):
    condition_id = models.BigIntegerField(db_column='Condition_ID', primary_key=True)  # Field name made lowercase.
    routingname = models.CharField(db_column='RoutingName', max_length=64)  # Field name made lowercase.
    condition = models.PositiveIntegerField(db_column='Condition')  # Field name made lowercase.
    rule = models.PositiveIntegerField(db_column='Rule')  # Field name made lowercase.
    valuestring = models.CharField(db_column='ValueString', max_length=128, blank=True, null=True)  # Field name made lowercase.
    valueint = models.BigIntegerField(db_column='ValueInt', blank=True, null=True)  # Field name made lowercase.
    valueuint = models.BigIntegerField(db_column='ValueUInt', blank=True, null=True)  # Field name made lowercase.
    valuefloat = models.FloatField(db_column='ValueFloat', blank=True, null=True)  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    valueuintext = models.BigIntegerField(db_column='ValueUIntExt', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_routing_conds'


class Mt5RoutingDealers(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    routingname = models.CharField(db_column='RoutingName', max_length=64)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=32)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_routing_dealers'
        unique_together = (('login', 'routingname'),)


class Mt5Symbols(models.Model):
    symbol_id = models.BigIntegerField(db_column='Symbol_ID', primary_key=True)  # Field name made lowercase.
    symbol = models.CharField(db_column='Symbol', max_length=32)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    path = models.CharField(db_column='Path', max_length=128)  # Field name made lowercase.
    isin = models.CharField(db_column='ISIN', max_length=16)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=64)  # Field name made lowercase.
    international = models.CharField(db_column='International', max_length=64)  # Field name made lowercase.
    basis = models.CharField(db_column='Basis', max_length=32)  # Field name made lowercase.
    source = models.CharField(db_column='Source', max_length=32)  # Field name made lowercase.
    page = models.CharField(db_column='Page', max_length=256)  # Field name made lowercase.
    currencybase = models.CharField(db_column='CurrencyBase', max_length=16)  # Field name made lowercase.
    currencybasedigits = models.PositiveIntegerField(db_column='CurrencyBaseDigits')  # Field name made lowercase.
    currencyprofit = models.CharField(db_column='CurrencyProfit', max_length=16)  # Field name made lowercase.
    currencyprofitdigits = models.PositiveIntegerField(db_column='CurrencyProfitDigits')  # Field name made lowercase.
    currencymargin = models.CharField(db_column='CurrencyMargin', max_length=16)  # Field name made lowercase.
    currencymargindigits = models.PositiveIntegerField(db_column='CurrencyMarginDigits')  # Field name made lowercase.
    color = models.PositiveIntegerField(db_column='Color')  # Field name made lowercase.
    colorbackground = models.PositiveIntegerField(db_column='ColorBackground')  # Field name made lowercase.
    digits = models.PositiveIntegerField(db_column='Digits')  # Field name made lowercase.
    point = models.FloatField(db_column='Point')  # Field name made lowercase.
    multiply = models.FloatField(db_column='Multiply')  # Field name made lowercase.
    tickflags = models.BigIntegerField(db_column='TickFlags')  # Field name made lowercase.
    tickbookdepth = models.PositiveIntegerField(db_column='TickBookDepth')  # Field name made lowercase.
    tickchartmode = models.PositiveIntegerField(db_column='TickChartMode')  # Field name made lowercase.
    filtersoft = models.PositiveIntegerField(db_column='FilterSoft')  # Field name made lowercase.
    filtersoftticks = models.PositiveIntegerField(db_column='FilterSoftTicks')  # Field name made lowercase.
    filterhard = models.PositiveIntegerField(db_column='FilterHard')  # Field name made lowercase.
    filterhardticks = models.PositiveIntegerField(db_column='FilterHardTicks')  # Field name made lowercase.
    filterdiscard = models.PositiveIntegerField(db_column='FilterDiscard')  # Field name made lowercase.
    filterspreadmax = models.PositiveIntegerField(db_column='FilterSpreadMax')  # Field name made lowercase.
    filterspreadmin = models.PositiveIntegerField(db_column='FilterSpreadMin')  # Field name made lowercase.
    filtergap = models.PositiveIntegerField(db_column='FilterGap')  # Field name made lowercase.
    filtergapticks = models.PositiveIntegerField(db_column='FilterGapTicks')  # Field name made lowercase.
    trademode = models.PositiveIntegerField(db_column='TradeMode')  # Field name made lowercase.
    tradeflags = models.BigIntegerField(db_column='TradeFlags')  # Field name made lowercase.
    calcmode = models.PositiveIntegerField(db_column='CalcMode')  # Field name made lowercase.
    execmode = models.PositiveIntegerField(db_column='ExecMode')  # Field name made lowercase.
    gtcmode = models.PositiveIntegerField(db_column='GTCMode')  # Field name made lowercase.
    fillflags = models.PositiveIntegerField(db_column='FillFlags')  # Field name made lowercase.
    expirflags = models.PositiveIntegerField(db_column='ExpirFlags')  # Field name made lowercase.
    orderflags = models.PositiveIntegerField(db_column='OrderFlags')  # Field name made lowercase.
    spread = models.IntegerField(db_column='Spread')  # Field name made lowercase.
    spreadbalance = models.IntegerField(db_column='SpreadBalance')  # Field name made lowercase.
    spreaddiff = models.IntegerField(db_column='SpreadDiff')  # Field name made lowercase.
    spreaddiffbalance = models.IntegerField(db_column='SpreadDiffBalance')  # Field name made lowercase.
    tickvalue = models.FloatField(db_column='TickValue')  # Field name made lowercase.
    ticksize = models.FloatField(db_column='TickSize')  # Field name made lowercase.
    contractsize = models.FloatField(db_column='ContractSize')  # Field name made lowercase.
    stopslevel = models.IntegerField(db_column='StopsLevel')  # Field name made lowercase.
    freezelevel = models.IntegerField(db_column='FreezeLevel')  # Field name made lowercase.
    quotestimeout = models.PositiveIntegerField(db_column='QuotesTimeout')  # Field name made lowercase.
    volumeminext = models.BigIntegerField(db_column='VolumeMinExt')  # Field name made lowercase.
    volumemaxext = models.BigIntegerField(db_column='VolumeMaxExt')  # Field name made lowercase.
    volumestepext = models.BigIntegerField(db_column='VolumeStepExt')  # Field name made lowercase.
    volumelimitext = models.BigIntegerField(db_column='VolumeLimitExt')  # Field name made lowercase.
    marginflags = models.PositiveIntegerField(db_column='MarginFlags')  # Field name made lowercase.
    margininitial = models.FloatField(db_column='MarginInitial')  # Field name made lowercase.
    marginmaintenance = models.FloatField(db_column='MarginMaintenance')  # Field name made lowercase.
    margininitialbuy = models.FloatField(db_column='MarginInitialBuy')  # Field name made lowercase.
    margininitialsell = models.FloatField(db_column='MarginInitialSell')  # Field name made lowercase.
    margininitialbuylimit = models.FloatField(db_column='MarginInitialBuyLimit')  # Field name made lowercase.
    margininitialselllimit = models.FloatField(db_column='MarginInitialSellLimit')  # Field name made lowercase.
    margininitialbuystop = models.FloatField(db_column='MarginInitialBuyStop')  # Field name made lowercase.
    margininitialsellstop = models.FloatField(db_column='MarginInitialSellStop')  # Field name made lowercase.
    margininitialbuystoplimit = models.FloatField(db_column='MarginInitialBuyStopLimit')  # Field name made lowercase.
    margininitialsellstoplimit = models.FloatField(db_column='MarginInitialSellStopLimit')  # Field name made lowercase.
    marginmaintenancebuy = models.FloatField(db_column='MarginMaintenanceBuy')  # Field name made lowercase.
    marginmaintenancesell = models.FloatField(db_column='MarginMaintenanceSell')  # Field name made lowercase.
    marginmaintenancebuylimit = models.FloatField(db_column='MarginMaintenanceBuyLimit')  # Field name made lowercase.
    marginmaintenanceselllimit = models.FloatField(db_column='MarginMaintenanceSellLimit')  # Field name made lowercase.
    marginmaintenancebuystop = models.FloatField(db_column='MarginMaintenanceBuyStop')  # Field name made lowercase.
    marginmaintenancesellstop = models.FloatField(db_column='MarginMaintenanceSellStop')  # Field name made lowercase.
    marginmaintenancebuystoplimit = models.FloatField(db_column='MarginMaintenanceBuyStopLimit')  # Field name made lowercase.
    marginmaintenancesellstoplimit = models.FloatField(db_column='MarginMaintenanceSellStopLimit')  # Field name made lowercase.
    marginrateliquidity = models.FloatField(db_column='MarginRateLiquidity')  # Field name made lowercase.
    marginhedged = models.FloatField(db_column='MarginHedged')  # Field name made lowercase.
    marginratecurrency = models.FloatField(db_column='MarginRateCurrency')  # Field name made lowercase.
    swapmode = models.PositiveIntegerField(db_column='SwapMode')  # Field name made lowercase.
    swaplong = models.FloatField(db_column='SwapLong')  # Field name made lowercase.
    swapshort = models.FloatField(db_column='SwapShort')  # Field name made lowercase.
    swap3day = models.IntegerField(db_column='Swap3Day')  # Field name made lowercase.
    timestart = models.DateTimeField(db_column='TimeStart')  # Field name made lowercase.
    timeexpiration = models.DateTimeField(db_column='TimeExpiration')  # Field name made lowercase.
    reflags = models.PositiveIntegerField(db_column='REFlags')  # Field name made lowercase.
    retimeout = models.PositiveIntegerField(db_column='RETimeout')  # Field name made lowercase.
    iecheckmode = models.PositiveIntegerField(db_column='IECheckMode')  # Field name made lowercase.
    ietimeout = models.PositiveIntegerField(db_column='IETimeout')  # Field name made lowercase.
    ieslipprofit = models.PositiveIntegerField(db_column='IESlipProfit')  # Field name made lowercase.
    iesliplosing = models.PositiveIntegerField(db_column='IESlipLosing')  # Field name made lowercase.
    ievolumemaxext = models.BigIntegerField(db_column='IEVolumeMaxExt')  # Field name made lowercase.
    pricesettle = models.FloatField(db_column='PriceSettle')  # Field name made lowercase.
    pricelimitmax = models.FloatField(db_column='PriceLimitMax')  # Field name made lowercase.
    pricelimitmin = models.FloatField(db_column='PriceLimitMin')  # Field name made lowercase.
    pricestrike = models.FloatField(db_column='PriceStrike')  # Field name made lowercase.
    optionmode = models.PositiveIntegerField(db_column='OptionMode')  # Field name made lowercase.
    facevalue = models.FloatField(db_column='FaceValue')  # Field name made lowercase.
    accruedinterest = models.FloatField(db_column='AccruedInterest')  # Field name made lowercase.
    splicetype = models.PositiveIntegerField(db_column='SpliceType')  # Field name made lowercase.
    splicetimetype = models.PositiveIntegerField(db_column='SpliceTimeType')  # Field name made lowercase.
    splicetimedays = models.PositiveIntegerField(db_column='SpliceTimeDays')  # Field name made lowercase.
    volumemin = models.BigIntegerField(db_column='VolumeMin', blank=True, null=True)  # Field name made lowercase.
    volumemax = models.BigIntegerField(db_column='VolumeMax', blank=True, null=True)  # Field name made lowercase.
    volumestep = models.BigIntegerField(db_column='VolumeStep', blank=True, null=True)  # Field name made lowercase.
    volumelimit = models.BigIntegerField(db_column='VolumeLimit', blank=True, null=True)  # Field name made lowercase.
    ievolumemax = models.BigIntegerField(db_column='IEVolumeMax', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_symbols'


class Mt5SymbolsSessions(models.Model):
    session_id = models.BigIntegerField(db_column='Session_ID', primary_key=True)  # Field name made lowercase.
    symbol_id = models.BigIntegerField(db_column='Symbol_ID')  # Field name made lowercase.
    type = models.PositiveIntegerField(db_column='Type')  # Field name made lowercase.
    day = models.PositiveIntegerField(db_column='Day')  # Field name made lowercase.
    open = models.PositiveIntegerField(db_column='Open')  # Field name made lowercase.
    close = models.PositiveIntegerField(db_column='Close')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_symbols_sessions'


class Mt5Time(models.Model):
    timezone = models.IntegerField(db_column='TimeZone', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    timeserver = models.CharField(db_column='TimeServer', max_length=128)  # Field name made lowercase.
    daylight = models.IntegerField(db_column='Daylight')  # Field name made lowercase.
    daylightstate = models.IntegerField(db_column='DaylightState')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'mt5_time'


class Mt5TimeWeekdays(models.Model):
    timezone = models.IntegerField(db_column='TimeZone', primary_key=True)  # Field name made lowercase.
    day = models.PositiveIntegerField(db_column='Day')  # Field name made lowercase.
    number_00 = models.PositiveIntegerField(db_column='00')  # Field renamed because it wasn't a valid Python identifier.
    number_01 = models.PositiveIntegerField(db_column='01')  # Field renamed because it wasn't a valid Python identifier.
    number_02 = models.PositiveIntegerField(db_column='02')  # Field renamed because it wasn't a valid Python identifier.
    number_03 = models.PositiveIntegerField(db_column='03')  # Field renamed because it wasn't a valid Python identifier.
    number_04 = models.PositiveIntegerField(db_column='04')  # Field renamed because it wasn't a valid Python identifier.
    number_05 = models.PositiveIntegerField(db_column='05')  # Field renamed because it wasn't a valid Python identifier.
    number_06 = models.PositiveIntegerField(db_column='06')  # Field renamed because it wasn't a valid Python identifier.
    number_07 = models.PositiveIntegerField(db_column='07')  # Field renamed because it wasn't a valid Python identifier.
    number_08 = models.PositiveIntegerField(db_column='08')  # Field renamed because it wasn't a valid Python identifier.
    number_09 = models.PositiveIntegerField(db_column='09')  # Field renamed because it wasn't a valid Python identifier.
    number_10 = models.PositiveIntegerField(db_column='10')  # Field renamed because it wasn't a valid Python identifier.
    number_11 = models.PositiveIntegerField(db_column='11')  # Field renamed because it wasn't a valid Python identifier.
    number_12 = models.PositiveIntegerField(db_column='12')  # Field renamed because it wasn't a valid Python identifier.
    number_13 = models.PositiveIntegerField(db_column='13')  # Field renamed because it wasn't a valid Python identifier.
    number_14 = models.PositiveIntegerField(db_column='14')  # Field renamed because it wasn't a valid Python identifier.
    number_15 = models.PositiveIntegerField(db_column='15')  # Field renamed because it wasn't a valid Python identifier.
    number_16 = models.PositiveIntegerField(db_column='16')  # Field renamed because it wasn't a valid Python identifier.
    number_17 = models.PositiveIntegerField(db_column='17')  # Field renamed because it wasn't a valid Python identifier.
    number_18 = models.PositiveIntegerField(db_column='18')  # Field renamed because it wasn't a valid Python identifier.
    number_19 = models.PositiveIntegerField(db_column='19')  # Field renamed because it wasn't a valid Python identifier.
    number_20 = models.PositiveIntegerField(db_column='20')  # Field renamed because it wasn't a valid Python identifier.
    number_21 = models.PositiveIntegerField(db_column='21')  # Field renamed because it wasn't a valid Python identifier.
    number_22 = models.PositiveIntegerField(db_column='22')  # Field renamed because it wasn't a valid Python identifier.
    number_23 = models.PositiveIntegerField(db_column='23')  # Field renamed because it wasn't a valid Python identifier.

    class Meta:
        managed = False
        db_table = 'mt5_time_weekdays'
        unique_together = (('timezone', 'day'),)


class Mt5Users(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    timestamp = models.BigIntegerField(db_column='Timestamp')  # Field name made lowercase.
    group = models.CharField(db_column='Group', max_length=64)  # Field name made lowercase.
    certserialnumber = models.BigIntegerField(db_column='CertSerialNumber')  # Field name made lowercase.
    rights = models.BigIntegerField(db_column='Rights')  # Field name made lowercase.
    registration = models.DateTimeField(db_column='Registration')  # Field name made lowercase.
    lastaccess = models.DateTimeField(db_column='LastAccess')  # Field name made lowercase.
    lastpasschange = models.DateTimeField(db_column='LastPassChange')  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=128)  # Field name made lowercase.
    company = models.CharField(db_column='Company', max_length=64)  # Field name made lowercase.
    account = models.CharField(db_column='Account', max_length=32)  # Field name made lowercase.
    country = models.CharField(db_column='Country', max_length=32)  # Field name made lowercase.
    language = models.PositiveIntegerField(db_column='Language')  # Field name made lowercase.
    clientid = models.BigIntegerField(db_column='ClientID')  # Field name made lowercase.
    city = models.CharField(db_column='City', max_length=32)  # Field name made lowercase.
    state = models.CharField(db_column='State', max_length=32)  # Field name made lowercase.
    zipcode = models.CharField(db_column='ZipCode', max_length=16)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=128)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=32)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=64)  # Field name made lowercase.
    id = models.CharField(db_column='ID', max_length=32)  # Field name made lowercase.
    status = models.CharField(db_column='Status', max_length=16)  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=64)  # Field name made lowercase.
    color = models.PositiveIntegerField(db_column='Color')  # Field name made lowercase.
    phonepassword = models.CharField(db_column='PhonePassword', max_length=32)  # Field name made lowercase.
    leverage = models.PositiveIntegerField(db_column='Leverage')  # Field name made lowercase.
    agent = models.BigIntegerField(db_column='Agent')  # Field name made lowercase.
    tradeaccounts = models.CharField(db_column='TradeAccounts', max_length=128)  # Field name made lowercase.
    leadcampaign = models.CharField(db_column='LeadCampaign', max_length=32)  # Field name made lowercase.
    leadsource = models.CharField(db_column='LeadSource', max_length=32)  # Field name made lowercase.
    timestamptrade = models.BigIntegerField(db_column='TimestampTrade')  # Field name made lowercase.
    balance = models.FloatField(db_column='Balance')  # Field name made lowercase.
    credit = models.FloatField(db_column='Credit')  # Field name made lowercase.
    interestrate = models.FloatField(db_column='InterestRate')  # Field name made lowercase.
    commissiondaily = models.FloatField(db_column='CommissionDaily')  # Field name made lowercase.
    commissionmonthly = models.FloatField(db_column='CommissionMonthly')  # Field name made lowercase.
    balanceprevday = models.FloatField(db_column='BalancePrevDay')  # Field name made lowercase.
    balanceprevmonth = models.FloatField(db_column='BalancePrevMonth')  # Field name made lowercase.
    equityprevday = models.FloatField(db_column='EquityPrevDay')  # Field name made lowercase.
    equityprevmonth = models.FloatField(db_column='EquityPrevMonth')  # Field name made lowercase.
    mqid = models.CharField(db_column='MQID', max_length=16)  # Field name made lowercase.
    lastip = models.CharField(db_column='LastIP', max_length=32)  # Field name made lowercase.
    apidata = models.CharField(db_column='ApiData', max_length=4000)  # Field name made lowercase.

    def toJSON(self):
        fields = []
        for field in self._meta.fields:
            fields.append(field.name)

        d = {}
        for attr in fields:
            d[attr] = getattr(self, attr)

        import json
        return json.dumps(d, cls=DjangoJSONEncoder)

    class Meta:
        managed = False
        db_table = 'mt5_users'


class Mt5Login(models.Model):
    login = models.BigIntegerField(db_column='Login', primary_key=True)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=64)  # Field name made lowercase.


    class Meta:
        managed = False
        db_table = 'mt5_login'