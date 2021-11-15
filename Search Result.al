table 50103 "Search Result"
{
    Caption = 'Search Result';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(2; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = CustomerContent;

        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = CustomerContent;
        }
        field(4; "Item No."; Text[100])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
        }
        field(5; "Item Description"; Text[100])
        {
            Caption = 'Item Description';
            DataClassification = CustomerContent;
        }
        field(6; "Order Date"; Date)
        {
            Caption = 'Order Date';
            DataClassification = CustomerContent;
        }
        field(7; "ItemLedgerEntryNo"; Integer)
        {
            Caption = 'Item Ledger Entry No.';
            DataClassification = CustomerContent;
        }
        field(8; "Customer No."; Text[100])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;

        }
        field(9; "Quantity"; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;

        }
        field(10; "Return Quantity"; Integer)
        {
            Caption = 'Return Quantity';
            DataClassification = CustomerContent;

        }

    }
    keys
    {
        key(PK; "Line No.")
        {
            Clustered = true;
        }
    }
}