<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>setCalculatedWorkingDays1</fullName>
        <description>PARX - Jochen Schrader: P00002 Sets the calculated Working Days (Part 1)</description>
        <field>Working_Days__c</field>
        <formula>CASE(MOD(StartDate__c-DATE(1900,1,7),7),0,0,6,0,1)
+IF(Month(StartDate__c)=Month(StartDate__c+1),CASE(MOD((StartDate__c+1)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+2),CASE(MOD((StartDate__c+2)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+3),CASE(MOD((StartDate__c+3)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+4),CASE(MOD((StartDate__c+4)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+5),CASE(MOD((StartDate__c+5)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+6),CASE(MOD((StartDate__c+6)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+7),CASE(MOD((StartDate__c+7)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+8),CASE(MOD((StartDate__c+8)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+9),CASE(MOD((StartDate__c+9)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+10),CASE(MOD((StartDate__c+10)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+11),CASE(MOD((StartDate__c+11)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+12),CASE(MOD((StartDate__c+12)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+13),CASE(MOD((StartDate__c+13)-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+14),CASE(MOD((StartDate__c+14)-DATE(1900,1,7),7),0,0,6,0,1),0)</formula>
        <name>setCalculatedWorkingDays1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>setCalculatedWorkingDays2</fullName>
        <description>PARX - Jochen Schrader: P00002 Calculates Workdays Part 2</description>
        <field>Working_Days__c</field>
        <formula>Working_Days__c
+IF(Month(StartDate__c)=Month(StartDate__c+15),CASE(MOD(StartDate__c+15-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+16),CASE(MOD(StartDate__c+16-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+17),CASE(MOD(StartDate__c+17-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+18),CASE(MOD(StartDate__c+18-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+19),CASE(MOD(StartDate__c+19-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+20),CASE(MOD(StartDate__c+20-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+21),CASE(MOD(StartDate__c+21-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+22),CASE(MOD(StartDate__c+22-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+23),CASE(MOD(StartDate__c+23-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+24),CASE(MOD(StartDate__c+24-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+25),CASE(MOD(StartDate__c+25-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+26),CASE(MOD(StartDate__c+26-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+27),CASE(MOD(StartDate__c+27-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+28),CASE(MOD(StartDate__c+28-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+29),CASE(MOD(StartDate__c+29-DATE(1900,1,7),7),0,0,6,0,1),0)
+IF(Month(StartDate__c)=Month(StartDate__c+30),CASE(MOD(StartDate__c+30-DATE(1900,1,7),7),0,0,6,0,1),0)</formula>
        <name>setCalculatedWorkingDays2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CalculateMonthlyWorkingDays</fullName>
        <actions>
            <name>setCalculatedWorkingDays1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>setCalculatedWorkingDays2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Time_Tracking__c.StartDate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>PARX - Jochen Schrader: P00002 Rule to calculate the Working Days for one month</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>