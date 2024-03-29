<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notify_Program_Admin_InvoicesandGradesAttached</fullName>
        <description>Notify Program Admin_InvoicesandGradesAttached</description>
        <protected>false</protected>
        <recipients>
            <field>Program_Admin_Approver__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Workflow_Email_Templates/Tuition_Refund_Invoices_Grades_AttachedHTML</template>
    </alerts>
    <alerts>
        <fullName>Tuition_Refund_ApprovedHTML</fullName>
        <description>Tuition Refund ApprovedHTML</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Workflow_Email_Templates/Tuition_Refund_ApprovedHTML</template>
    </alerts>
    <alerts>
        <fullName>Tuition_Refund_Approved_UploadInvoicesandGradesHTML</fullName>
        <description>Tuition Refund Approved_UploadInvoicesandGradesHTML</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Workflow_Email_Templates/Tuition_Refund_Approved_UploadInvoicesandGradesHTML</template>
    </alerts>
    <alerts>
        <fullName>Tuition_Refund_PaymentProcessed</fullName>
        <description>Tuition Refund PaymentProcessed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Workflow_Email_Templates/Tuition_Refund_PaymentProcessedHTML</template>
    </alerts>
    <alerts>
        <fullName>Tuition_Refund_RejectedHTML</fullName>
        <description>Tuition Refund RejectedHTML</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Workflow_Email_Templates/Tuition_Refund_RejectedHTML</template>
    </alerts>
    <fieldUpdates>
        <fullName>FinalApprovalStatus</fullName>
        <field>FinalApprovalStatus__c</field>
        <formula>&quot;Approved&quot;</formula>
        <name>FinalApprovalStatus</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateCurrentApproverwithHRManager</fullName>
        <field>Current_Approver__c</field>
        <formula>HR_Manager__r.FirstName &amp; &quot; &quot; &amp; HR_Manager__r.LastName</formula>
        <name>UpdateCurrentApproverwithHRManager</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateCurrentApproverwithManagerName</fullName>
        <field>Current_Approver__c</field>
        <formula>Manager__r.FirstName &amp; &quot; &quot; &amp;  Manager__r.LastName</formula>
        <name>UpdateCurrentApproverwithManagerName</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateCurrentApproverwithProgramAdmin</fullName>
        <field>Current_Approver__c</field>
        <formula>Program_Admin_Name__c</formula>
        <name>UpdateCurrentApproverwithProgramAdmin</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateCurrentApproverwithSubmittedforApp</fullName>
        <description>Update Current_Approver__c with Submitted for Approval</description>
        <field>Current_Approver__c</field>
        <formula>&quot;Submitted for Approval&quot;</formula>
        <name>UpdateCurrentApproverwithSubmittedforApp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateFinalApprovalStatus</fullName>
        <field>FinalApprovalStatus__c</field>
        <formula>&quot;Closed&quot;</formula>
        <name>UpdateFinalApprovalStatus</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateProgramAdminStatus</fullName>
        <field>ProgramAdminStatus__c</field>
        <formula>&quot;ManagerApproved&quot;</formula>
        <name>UpdateProgramAdminStatus</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateProgramAdminStatus_Rejected</fullName>
        <field>ProgramAdminStatus__c</field>
        <formula>&quot;Rejected&quot;</formula>
        <name>UpdateProgramAdminStatus_Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateProgramAdminStatustoClosed</fullName>
        <field>ProgramAdminStatus__c</field>
        <formula>&quot;Closed&quot;</formula>
        <name>UpdateProgramAdminStatustoClosed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSubmitforApprovaltoFalse</fullName>
        <field>SubmitforApproval__c</field>
        <formula>&quot;False&quot;</formula>
        <name>UpdateSubmitforApprovaltoFalse</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Notify - Program Admin Invoice_Grades have been attached</fullName>
        <actions>
            <name>Notify_Program_Admin_InvoicesandGradesAttached</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Tuition_Refund__c.ProgramAdminStatus__c</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Tuition_Refund__c.Invoice_s_Grades_Attached__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UpdateFinalApprovalStatus</fullName>
        <actions>
            <name>Tuition_Refund_PaymentProcessed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>UpdateFinalApprovalStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Tuition_Refund__c.ProgramAdminStatus__c</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Tuition_Refund__c.Close_and_Lock__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>(Tuition Refund: ProgramAdminStatusequalsClosed) and (Tuition Refund: Close and LockequalsTrue)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
