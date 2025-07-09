enum 50021 "Field Layout Action"
{
    Extensible = true;

    value(0; Hide)
    {
        Caption = 'Hide Field';
    }

    value(1; Show)
    {
        Caption = 'Show Field';
    }

    value(2; AddAfter)
    {
        Caption = 'Add After Another Field';
    }

    value(3; AddBefore)
    {
        Caption = 'Add Before Another Field';
    }

    value(4; MoveAfter)
    {
        Caption = 'Move After Field';
    }

    value(5; MoveBefore)
    {
        Caption = 'Move Before Field';
    }

    value(6; Freeze)
    {
        Caption = 'Freeze Field';
    }

    value(7; Enable)
    {
        Caption = 'Enable Field';
    }

    value(8; Disable)
    {
        Caption = 'Disable Field';
    }

    value(9; LockEditing)
    {
        Caption = 'Lock Editing (Editable = false)';
    }

    value(10; UnlockEditing)
    {
        Caption = 'Unlock Editing (Editable = true)';
    }
}